import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dmdata_oauth_api_client/dmdata_oauth_api_client.dart';
import 'package:dmdata_oauth_flutter/src/model/oauth_config.dart';
import 'package:dmdata_oauth_flutter/src/model/oauth_state.dart';
import 'package:dmdata_oauth_flutter/src/storage/oauth_storage.dart';
import 'package:flutter_appauth/flutter_appauth.dart' as app_auth;

export 'package:flutter_appauth_platform_interface/src/errors.dart';

/// OAuth認証を管理するクラス
class OAuthManager {
  OAuthManager({
    required OAuthConfig config,
    required OAuthStorage storage,
    required DmdataOauthApiClient client,
    required app_auth.FlutterAppAuth appAuth,
  })  : _config = config,
        _storage = storage,
        _client = client,
        _appAuth = appAuth;

  final OAuthConfig _config;
  final OAuthStorage _storage;
  final DmdataOauthApiClient _client;
  final app_auth.FlutterAppAuth _appAuth;

  final _stateController = StreamController<OAuthState?>.broadcast();

  /// 認証状態の変更を通知するStream
  Stream<OAuthState?> get onStateChanged => _stateController.stream;

  /// 現在の認証状態を取得
  Future<OAuthState?> getCurrentState() => _storage.load();

  Future<OAuthState?> getCurrentStateAndRefreshIfNeeded() async {
    final currentState = await _storage.load();
    if (currentState == null) {
      return null;
    }

    // アクセストークンの有効期限が切れている/切れそうな場合はリフレッシュ
    final accessTokenExpiresThreshold = currentState.expiresAt.subtract(
      _config.accessTokenExpiration,
    );
    if (accessTokenExpiresThreshold.isBefore(DateTime.now())) {
      return refreshToken();
    }

    // リフレッシュトークンの有効期限が切れている/切れそうな場合はリフレッシュ
    final refreshTokenExpiresThreshold =
        currentState.refreshTokenExpiresAt.subtract(
      _config.refreshTokenExpiration,
    );
    if (refreshTokenExpiresThreshold.isBefore(DateTime.now())) {
      return refreshToken();
    }

    return currentState;
  }

  /// 認可コードを使用してアクセストークンを取得
  Future<void> handleAuthorizationCode({
    required String code,
    String? codeVerifier,
  }) async {
    final response = await _client.requestToken(
      clientId: _config.clientId,
      clientSecret: _config.clientSecret,
      grantType: 'authorization_code',
      code: code,
      codeVerifier: codeVerifier,
      redirectUri: _config.redirectUri,
    );
    final refreshToken = response.refreshToken;
    final scope = response.scope;
    if (refreshToken == null || scope == null) {
      throw Exception(
        'リフレッシュトークンまたはスコープが取得できませんでした: $response',
      );
    }

    final state = OAuthState(
      accessToken: response.accessToken,
      refreshToken: refreshToken,
      expiresAt: DateTime.now().add(
        Duration(seconds: response.expiresIn),
      ),
      refreshTokenExpiresAt: DateTime.now().add(
        const Duration(days: 30), // リフレッシュトークンの有効期限は30日
      ),
      scopes: scope.split(' '),
    );

    await _storage.save(state);
    _stateController.add(state);
  }

  /// 認証を開始
  /// can throws `FlutterAppAuthUserCancelledException`,
  /// `FlutterAppAuthPlatformException`
  Future<OAuthState> startAuthorization() async {
    final result = await _appAuth.authorizeAndExchangeCode(
      app_auth.AuthorizationTokenRequest(
        _config.clientId,
        _config.redirectUri,
        scopes: _config.scopes,
        serviceConfiguration: app_auth.AuthorizationServiceConfiguration(
          authorizationEndpoint: _config.authorizationEndpoint,
          tokenEndpoint: _config.tokenEndpoint,
        ),
      ),
    );
    final oauthState = OAuthState(
      accessToken: result.accessToken!,
      refreshToken: result.refreshToken!,
      expiresAt: result.accessTokenExpirationDateTime!,
      refreshTokenExpiresAt: DateTime.now().add(const Duration(days: 183)),
      scopes: result.scopes!,
    );
    await _storage.save(oauthState);
    _stateController.add(oauthState);
    return oauthState;
  }

  /// アクセストークンをリフレッシュ
  /// throws `OAuthException`
  Future<OAuthState> refreshToken() async {
    try {
      final currentState = await _storage.load();
      if (currentState?.refreshToken == null) {
        throw Exception('リフレッシュトークンがありません');
      }

      // リフレッシュトークンの有効期限が切れている場合は例外を返す
      if (currentState!.refreshTokenExpiresAt.isBefore(DateTime.now())) {
        throw OAuthRefreshTokenExpiredException();
      }

      final response = await _client.refreshToken(
        clientId: _config.clientId,
        clientSecret: _config.clientSecret,
        grantType: OAuthGrantType.refreshToken.value,
        refreshToken: currentState.refreshToken,
      );

      final state = OAuthState(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken ?? currentState.refreshToken,
        expiresAt: DateTime.now().add(
          Duration(seconds: response.expiresIn),
        ),
        refreshTokenExpiresAt: DateTime.now().add(
          const Duration(days: 183), // リフレッシュトークンの有効期限は183日
        ),
        scopes: response.scope?.split(' ') ?? currentState.scopes,
      );

      await _storage.save(state);
      _stateController.add(state);
      return state;
    } on DioException catch (e) {
      final data = e.response?.data;
      if (data != null && data is Map<String, dynamic>) {
        final error = OAuthErrorResponse.fromJson(data);
        throw OAuthErrorResponseException(
          error: error.error,
          errorDescription: error.errorDescription,
        );
      }
      log(
        'OAuthRefreshException: ${e.response?.data}',
        name: 'OAuthManager',
      );
      rethrow;
    }
  }

  /// 認証状態をクリア
  Future<void> signOut() async {
    final currentState = await _storage.load();
    if (currentState == null) {
      throw Exception('認証状態がありません');
    }

    await _client.revokeToken(
      clientId: _config.clientId,
      token: currentState.accessToken,
    );

    await _storage.clear();
    _stateController.add(null);
  }

  Future<void> dispose() async {
    await _stateController.close();
  }
}

sealed class OAuthException implements Exception {
  OAuthException({
    required this.message,
  });

  final String message;
}

class OAuthRefreshTokenExpiredException extends OAuthException {
  OAuthRefreshTokenExpiredException() : super(message: 'リフレッシュトークンが切れています');
}

class OAuthErrorResponseException extends OAuthException {
  OAuthErrorResponseException({
    required String error,
    required this.errorDescription,
  }) : super(message: error);

  final String? errorDescription;
}
