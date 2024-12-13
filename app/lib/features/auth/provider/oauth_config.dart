import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart' as oauth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oauth_config.g.dart';

@Riverpod(keepAlive: true)
class OAuthConfig extends _$OAuthConfig {
  @override
  oauth.OAuthConfig build() => oauth.OAuthConfig(
        clientId: 'YOUR_CLIENT_ID',
        clientSecret: 'YOUR_CLIENT_SECRET',
        redirectUri: 'net.yumnumm.eqdashboard://login-callback',
        scope: 'telegram.earthquakes.get',
      );
}
