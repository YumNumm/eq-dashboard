/// 認可コードの送信方法
enum ResponseMode {
  /// クエリパラメータとして送信（デフォルト）
  query('query'),

  /// フラグメントとして送信
  fragment('fragment'),

  /// POSTリクエストのフォームデータとして送信
  formPost('form_post');

  const ResponseMode(this.value);
  final String value;
}

/// OAuth2の認可エンドポイントのURLを生成するクラス
class OAuthAuthorizationUrl {
  /// デフォルトの認可エンドポイントのベースURL
  static const defaultBaseUrl =
      'https://manager.dmdata.jp/account/oauth2/v1/auth';

  const OAuthAuthorizationUrl({
    this.baseUrl = defaultBaseUrl,
  });

  /// 認可エンドポイントのベースURL
  final String baseUrl;

  /// 認可エンドポイントのURLを生成する
  ///
  /// [clientId] OAuth クライアント毎に割り当てられた、`CId.`で始まるID
  /// [redirectUri] 認可コードを送信するURI。OAuth クライアントで指定されたリダイレクトURIと厳密に一致させる必要があります。
  /// [scope] ユーザーから認可を求めるスコープ（権限）。複数含める場合はスペースで区切ります。
  /// [state] CSRF対策のための一意の値。64バイト以下である必要があります。
  /// [responseMode] 認可コードを送信する際に使用する場所を指定します。
  /// [codeChallenge] PKCEを使用する場合のcode_challenge
  /// [codeChallengeMethod] PKCEを使用する場合のcode_challengeのエンコード方式。S256またはplain
  Uri generate({
    required String clientId,
    required String redirectUri,
    required String scope,
    required String state,
    ResponseMode responseMode = ResponseMode.query,
    String? codeChallenge,
    String? codeChallengeMethod,
  }) {
    assert(
      state.length <= 64,
      'stateは64バイト以下である必要があります',
    );

    if (codeChallenge != null) {
      assert(
        codeChallengeMethod != null,
        'code_challengeを指定する場合は、code_challenge_methodも指定する必要があります',
      );
      assert(
        codeChallengeMethod == 'S256' || codeChallengeMethod == 'plain',
        'code_challenge_methodはS256またはplainである必要があります',
      );
    }

    final queryParameters = <String, String>{
      'client_id': clientId,
      'response_type': 'code',
      'redirect_uri': redirectUri,
      'scope': scope,
      'state': state,
      'response_mode': responseMode.value,
    };

    if (codeChallenge != null) {
      queryParameters['code_challenge'] = codeChallenge;
      queryParameters['code_challenge_method'] = codeChallengeMethod!;
    }

    return Uri.parse(baseUrl).replace(queryParameters: queryParameters);
  }
}
