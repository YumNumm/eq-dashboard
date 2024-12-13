import 'dart:async';
import 'dart:math';

import 'package:dmdata_oauth_api_client/dmdata_oauth_api_client.dart';

import 'model/oauth_config.dart';
import 'model/oauth_state.dart';
import 'storage/oauth_storage.dart';

/// OAuth認証を管理するクラス
class OAuthManager {
  OAuthManager({
    required OAuthConfig config,
    required OAuthStorage storage,
    required DmdataOauthApiClient client,
    required DmdataOAuthAuthorizationUrlGenerator authorizationUrlGenerator,
  })  : _config = config,
        _storage = storage,
        _client = client,
        _authorizationUrlGenerator = authorizationUrlGenerator;

  final OAuthConfig _config;
  final OAuthStorage _storage;
  final DmdataOauthApiClient _client;
  final DmdataOAuthAuthorizationUrlGenerator _authorizationUrlGenerator;

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
      return await refreshToken();
    }

    // リフレッシュトークンの有効期限が切れている/切れそうな場合はリフレッシュ
    final refreshTokenExpiresThreshold =
        currentState.refreshTokenExpiresAt.subtract(
      _config.refreshTokenExpiration,
    );
    if (refreshTokenExpiresThreshold.isBefore(DateTime.now())) {
      return await refreshToken();
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
      grantType: OAuthGrantType.authorizationCode,
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
      scope: scope,
    );

    await _storage.save(state);
    _stateController.add(state);
  }

  /// アクセストークンをリフレッシュ
  Future<OAuthState> refreshToken() async {
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
      grantType: OAuthGrantType.refreshToken,
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
      scope: response.scope ?? currentState.scope,
    );

    await _storage.save(state);
    _stateController.add(state);
    return state;
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

  /// 認可URLを生成
  Uri generateAuthorizationUrl({
    /// PKCEを使用するかどうか
    bool useCodeChallenge = true,

    /// PKCEを使用する場合のcode_challengeのエンコード方式
    CodeChallengeMethod? codeChallengeMethod = CodeChallengeMethod.S256,
  }) {
    assert(
      useCodeChallenge ? codeChallengeMethod != null : true,
      'PKCEを使用する場合はcode_challenge_methodも指定する必要があります',
    );

    final state = _generateRandomString(32);

    return _authorizationUrlGenerator.generate(
      clientId: _config.clientId,
      redirectUri: _config.redirectUri,
      scope: _config.scope,
      state: state,
      responseMode: ResponseMode.query,
      codeChallenge: useCodeChallenge ? _generateRandomString(32) : null,
      codeChallengeMethod: useCodeChallenge ? codeChallengeMethod : null,
    );
  }

  String _generateRandomString(int length) {
    const chars =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random.secure();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
  }

  void dispose() {
    _stateController.close();
  }
}

sealed class OAuthRefreshException implements Exception {
  OAuthRefreshException({
    required this.message,
  });

  final String message;
}

class OAuthRefreshTokenExpiredException extends OAuthRefreshException {
  OAuthRefreshTokenExpiredException() : super(message: 'リフレッシュトークンが切れています');
}
