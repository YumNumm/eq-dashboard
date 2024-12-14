import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart' as oauth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oauth_config.g.dart';

@Riverpod(keepAlive: true)
class OAuthConfig extends _$OAuthConfig {
  @override
  oauth.OAuthConfig build() => oauth.OAuthConfig(
        authorizationEndpoint:
            'https://manager.dmdata.jp/account/oauth2/v1/auth',
        tokenEndpoint: 'https://manager.dmdata.jp/account/oauth2/v1/token',
        revokeEndpoint: 'https://manager.dmdata.jp/account/oauth2/v1/revoke',
        clientId: 'CId.zEBBH6rIqV9kW2yAy-gK78tT3Vb5ifUQrKHa_3ia9eTA',
        redirectUri: 'net.yumnumm.eqdashboard://login-callback',
        scopes: ['eew.get.forecast', 'eew.get.warning'],
      );
}
