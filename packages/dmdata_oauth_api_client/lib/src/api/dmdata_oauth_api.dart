// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart' hide Headers;
import 'package:dmdata_oauth_api_client/src/model/oauth_token_response.dart';
import 'package:retrofit/retrofit.dart';

part 'dmdata_oauth_api.g.dart';

/// DMDATAのOAuth2認証用APIクライアント
@RestApi(
  baseUrl: 'https://manager.dmdata.jp',
)
abstract class DmdataOauthApiClient {
  factory DmdataOauthApiClient(
    Dio dio, {
    String baseUrl,
  }) = _DmdataOauthApiClient;

  /// 認可コードフローでアクセストークンを要求します。
  @POST('/account/oauth2/v1/token')
  @FormUrlEncoded()
  Future<OAuthTokenResponse> requestToken({
    /// OAuth クライアント毎に割り当てられた、`CId.`で始まるID
    @Field('client_id') required String clientId,

    /// 認可コードフローでは、`authorization_code`を指定する必要があります。
    @Field('grant_type') required String grantType,

    /// 認可コード要求で取得した`ACe.`で始まる認可コード。
    @Field('code') required String code,

    /// 認可コード要求する際にパラメータに入力した`redirect_uri`を指定します。クライアントに設定したリダイレクトURIが1個のみで、実際のリダイレクト先と一致する場合は必要ではありません。
    @Field('redirect_uri') required String redirectUri,

    /// OAuth クライアント毎に割り当てられた、`CSt.`で始まるシークレットキー。クライアントの種類が「機密」の場合は必須です。
    @Field('client_secret') String? clientSecret,

    /// 認可コード要求時に、PKCEが使用されていた場合は必須です。
    @Field('code_verifier') String? codeVerifier,
  });

  /// リフレッシュトークンを使用してアクセストークンを再取得します。
  @POST('/account/oauth2/v1/token')
  @FormUrlEncoded()
  Future<OAuthTokenResponse> refreshToken({
    /// OAuth クライアント毎に割り当てられた、`CId.`で始まるID
    @Field('client_id') required String clientId,

    /// リフレッシュトークンフローでは、`refresh_token`を指定する必要があります。
    @Field('grant_type') required OAuthGrantType grantType,

    /// 認可コード要求で取得した`ARh.`で始まるリフレッシュトークン。
    @Field('refresh_token') required String refreshToken,

    /// OAuth クライアント毎に割り当てられた、`CSt.`で始まるシークレットキー。クライアントの種類が「機密」の場合は必須です。
    @Field('client_secret') String? clientSecret,
  });

  /// クライアント・クレデンシャルズフローでアクセストークンを取得します。
  /// クライアントが機密である必要があります。
  @POST('/account/oauth2/v1/token')
  @FormUrlEncoded()
  Future<OAuthTokenResponse> clientCredentials({
    /// OAuth クライアント毎に割り当てられた、`CId.`で始まるID
    @Field('client_id') required String clientId,

    /// OAuth クライアント毎に割り当てられた、`CSt.`で始まるシークレットキー。
    @Field('client_secret') required String clientSecret,

    /// クライアント・クレデンシャルズフローでは、`client_credentials`を指定する必要があります。
    @Field('grant_type') required OAuthGrantType grantType,

    /// ユーザーから認可を求めるスコープ（権限）。複数含める場合はスペースで区切ります。
    @Field('scope') required String scope,
  });

  /// アクセストークンまたはリフレッシュトークンを失効させます。
  @POST('/account/oauth2/v1/revoke')
  @FormUrlEncoded()
  Future<void> revokeToken({
    /// OAuth クライアント毎に割り当てられた、`CId.`で始まるID
    @Field('client_id') required String clientId,

    /// `ATn.`で始まるアクセストークンか、`ARh.`で始まるリフレッシュトークン。
    @Field('token') required String token,

    /// OAuth クライアント毎に割り当てられた、`CSt.`で始まるシークレットキー。クライアントの種類が「機密」の場合は必須です。
    @Field('client_secret') String? clientSecret,
  });
}

/// OAuth2.0のgrant_type
enum OAuthGrantType {
  /// 認可コードフロー
  authorizationCode('authorization_code'),

  /// リフレッシュトークンフロー
  refreshToken('refresh_token'),

  /// クライアント・クレデンシャルズフロー
  clientCredentials('client_credentials');

  const OAuthGrantType(this.value);
  final String value;
}
