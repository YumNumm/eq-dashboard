import 'dart:developer';

import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/features/auth/provider/oauth_manager.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  @override
  Future<OAuthState?> build() async {
    final manager = ref.watch(oauthManagerProvider);
    final state = await manager.getCurrentState();
    return state;
  }

  Future<void> startAuthorization() async {
    state = const AsyncLoading();
    final manager = ref.watch(oauthManagerProvider);
    state = await AsyncValue.guard(() async {
      final result = await manager.startAuthorization();
      return result;
    });
  }

  Future<void> handleAuthorizationCallback(Uri uri, String codeVerifier) async {
    try {
      log('handleAuthorizationCallback: $uri', name: 'AuthNotifier');
      log('codeVerifier: $codeVerifier', name: 'AuthNotifier');

      final manager = ref.watch(oauthManagerProvider);
      final code = uri.queryParameters['code'];
      if (code == null || code.isEmpty) {
        throw Exception('code is empty');
      }
      final state = await manager.handleAuthorizationCode(
        code: code,
        codeVerifier: codeVerifier,
      );
      return state;
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> logout() async {
    final manager = ref.watch(oauthManagerProvider);
    state = const AsyncLoading();
    try {
      await manager.signOut();
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
