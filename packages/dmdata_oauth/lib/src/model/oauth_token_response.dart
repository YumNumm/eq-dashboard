import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_token_response.freezed.dart';
part 'oauth_token_response.g.dart';

/// OAuth2トークンエンドポイントのレスポンス
@freezed
class OAuthTokenResponse with _$OAuthTokenResponse {
  const factory OAuthTokenResponse({
    /// アクセストークン (ATn.で始まる)
    required String accessToken,
    /// トークンタイプ (Bearer固定)
    required String tokenType,
    /// アクセストークンの有効期間（秒）
    required int expiresIn,
    /// リフレッシュトークン (ARh.で始まる)
    String? refreshToken,
    /// 付与されたスコープ（スペース区切り）
    String? scope,
  }) = _OAuthTokenResponse;

  factory OAuthTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$OAuthTokenResponseFromJson(json);
}
