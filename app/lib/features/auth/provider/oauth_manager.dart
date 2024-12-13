import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart' as oauth;
import 'package:eqdashboard/core/provider/secure_storage.dart';
import 'package:eqdashboard/features/auth/provider/dmdata_oauth_api_client.dart';
import 'package:eqdashboard/features/auth/provider/dmdata_oauth_authorization_url_generator.dart';
import 'package:eqdashboard/features/auth/provider/oauth_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oauth_manager.g.dart';

@Riverpod(keepAlive: true)
oauth.OAuthManager oauthManager(Ref ref) => oauth.OAuthManager(
      storage:
          oauth.SecureOAuthStorage(storage: ref.watch(secureStorageProvider)),
      client: ref.watch(dmdataOauthApiClientProvider),
      authorizationUrlGenerator:
          ref.watch(oauthAuthorizationUrlGeneratorProvider),
      config: ref.watch(oAuthConfigProvider),
    );
