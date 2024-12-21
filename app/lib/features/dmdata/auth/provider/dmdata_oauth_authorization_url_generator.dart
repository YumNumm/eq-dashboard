import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart' as oauth;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dmdata_oauth_authorization_url_generator.g.dart';

@Riverpod(keepAlive: true)
oauth.DmdataOAuthAuthorizationUrlGenerator oauthAuthorizationUrlGenerator(
  Ref ref,
) =>
    const oauth.DmdataOAuthAuthorizationUrlGenerator();
