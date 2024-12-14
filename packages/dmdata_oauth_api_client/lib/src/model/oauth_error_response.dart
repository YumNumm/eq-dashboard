import 'package:freezed_annotation/freezed_annotation.dart';

part 'oauth_error_response.freezed.dart';
part 'oauth_error_response.g.dart';

/// OAuth2エンドポイントのエラーレスポンス
@freezed
class OAuthErrorResponse with _$OAuthErrorResponse {
  const factory OAuthErrorResponse({
    /// エラーコード
    /// - invalid_request: リクエストパラメータが不正
    /// - invalid_client: クライアントが見つからない
    /// - invalid_grant: 認可コードが無効
    /// - unauthorized_client: クライアントに権限がない
    /// - server_error: サーバーエラー
    /// など
    required String error,

    /// エラーの詳細な説明
    String? errorDescription,
  }) = _OAuthErrorResponse;

  factory OAuthErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$OAuthErrorResponseFromJson(json);
}
