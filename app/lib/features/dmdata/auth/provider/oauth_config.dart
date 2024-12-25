import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart' as oauth;
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oauth_config.g.dart';

@Riverpod(keepAlive: true)
class OAuthConfig extends _$OAuthConfig {
  @override
  oauth.OAuthConfig build() => const oauth.OAuthConfig(
        authorizationEndpoint:
            'https://manager.dmdata.jp/account/oauth2/v1/auth',
        tokenEndpoint: 'https://manager.dmdata.jp/account/oauth2/v1/token',
        revokeEndpoint: 'https://manager.dmdata.jp/account/oauth2/v1/revoke',
        clientId: 'CId.zEBBH6rIqV9kW2yAy-gK78tT3Vb5ifUQrKHa_3ia9eTA',
        redirectUri: kIsWeb
            ? 'https://eqdashboard.yumnumm.dev/login-callback'
            : 'net.yumnumm.eqdashboard://login-callback',
        scopes: [
          'eew.get.forecast',
          'eew.get.warning',
          'contract.list',
          'gd.earthquake',
          'gd.eew',
          'parameter.earthquake',
          'socket.start',
          'socket.list',
          'socket.close',
          'telegram.data',
          'telegram.get.earthquake',
          'telegram.list',
        ],
      );
}
