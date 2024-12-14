/// 認可コードの送信方法
// ignore_for_file: lines_longer_than_80_chars
enum ResponseMode {
  /// クエリパラメータとして送信（デフォルト）
  query,

  /// フラグメントとして送信
  fragment,

  /// POSTリクエストのフォームデータとして送信
  formPost,
  ;
}

/// PKCEのcode_challengeのエンコード方式
enum CodeChallengeMethod {
  /// SHA256でハッシュ化
  // ignore: constant_identifier_names
  S256,

  /// 平文
  plain,
  ;
}

/// OAuth2の認可エンドポイントのURLを生成するクラス
class DmdataOAuthAuthorizationUrlGenerator {

  /// コンストラクタ
  ///
  /// [baseUrl] 認可エンドポイントのベースURL。デフォルトは[defaultBaseUrl]
  const DmdataOAuthAuthorizationUrlGenerator({
    this.baseUrl = defaultBaseUrl,
  });
  /// デフォルトの認可エンドポイントのベースURL
  static const defaultBaseUrl =
      'https://manager.dmdata.jp/account/oauth2/v1/auth';

  /// 認可エンドポイントのベースURL
  final String baseUrl;

  /// 認可エンドポイントのURLを生成する
  ///
  /// [clientId] OAuth クライアント毎に割り当てられた、`CId.`で始まるID
  /// [redirectUri] 認可コードを送信するURI。OAuth クライアントで指定されたリダイレクトURIと厳密に一致させる必要があります
  /// [scope] ユーザーから認可を求めるスコープ（権限）。複数含める場合はスペースで区切ります
  /// [state] CSRF対策のための一意の値。64バイト以下である必要があります
  /// [responseMode] 認可コードを送信する際に使用する場所を指定します。デフォルトは[ResponseMode.query]
  /// [codeChallenge] PKCEを使用する場合のcode_challenge。PKCEを使用しない場合は指定しません
  /// [codeChallengeMethod] PKCEを使用する場合のcode_challengeのエンコード方式。'S256'または'plain'を指定します。PKCEを使用しない場合は指定しません
  Uri generate({
    /// OAuth クライアント毎に割り当てられた、`CId.`で始まるID
    required String clientId,

    /// 認可コードを送信するURI
    /// OAuth クライアントで指定されたリダイレクトURIと厳密に一致させる必要があります
    required String redirectUri,

    /// ユーザーから認可を求めるスコープ（権限）
    /// 複数含める場合はスペースで区切ります
    required String scope,

    /// CSRF対策のための一意の値
    /// 64バイト以下である必要があります
    required String state,

    /// 認可コードを送信する際に使用する場所を指定します
    /// デフォルトは[ResponseMode.query]
    ResponseMode responseMode = ResponseMode.query,

    /// PKCEを使用する場合のcode_challenge
    /// PKCEを使用しない場合は指定しません
    String? codeChallenge,

    /// PKCEを使用する場合のcode_challengeのエンコード方式
    /// PKCEを使用しない場合は指定しません
    CodeChallengeMethod? codeChallengeMethod,
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
    }

    final queryParameters = <String, String>{
      'client_id': clientId,
      'response_type': 'code',
      'redirect_uri': redirectUri,
      'scope': scope,
      'state': state,
      'response_mode': responseMode.name,
      if (codeChallenge != null) ...{
        'code_challenge': codeChallenge,
        'code_challenge_method': codeChallengeMethod!.name,
      },
    };

    return Uri.parse(baseUrl).replace(
      queryParameters: queryParameters,
    );
  }
}
