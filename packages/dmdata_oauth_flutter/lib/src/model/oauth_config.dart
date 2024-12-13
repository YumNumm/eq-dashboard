import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_config.freezed.dart';
part 'oauth_config.g.dart';

/// OAuth認証の設定を表すモデル
@freezed
class OAuthConfig with _$OAuthConfig {
  const factory OAuthConfig({
    /// クライアントID
    required String clientId,

    /// クライアントシークレット
    String? clientSecret,

    /// リダイレクトURI
    required String redirectUri,

    /// 要求するスコープ
    required String scope,

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
