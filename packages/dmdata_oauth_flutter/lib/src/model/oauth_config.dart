import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_config.freezed.dart';
part 'oauth_config.g.dart';

/// OAuth認証の設定を表すモデル
@freezed
class OAuthConfig with _$OAuthConfig {
  const factory OAuthConfig({
    /// 認可エンドポイント
    required String authorizationEndpoint,

    /// トークンエンドポイント
    required String tokenEndpoint,

    /// 失効エンドポイント
    required String revokeEndpoint,

    /// クライアントID
    required String clientId,

    /// リダイレクトURI
    required String redirectUri,

    /// 要求するスコープ
    required List<String> scopes,

    /// クライアントシークレット
    String? clientSecret,

    /// アクセストークンの更新期限
    /// デフォルトは1時間
    @Default(Duration(hours: 1)) Duration accessTokenExpiration,

    /// リフレッシュトークンの更新期限
    /// デフォルトは1週間
    @Default(Duration(days: 7)) Duration refreshTokenExpiration,
  }) = _OAuthConfig;

  factory OAuthConfig.fromJson(Map<String, dynamic> json) =>
      _$OAuthConfigFromJson(json);
}
