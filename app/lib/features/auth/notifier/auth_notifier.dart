import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/util/result.dart';
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

  Future<Result<OAuthState, Exception>> startAuthorization() async {
    state = const AsyncLoading();
    final manager = ref.watch(oauthManagerProvider);
    final result = await Result.capture(
      manager.startAuthorization,
    );
    if (result case Success()) {
      state = AsyncData(result.value);
    }
    return result;
  }

  Future<Result<void, Exception>> logout() async {
    final manager = ref.watch(oauthManagerProvider);
    state = const AsyncLoading();
    return Result.capture(() async {
      await manager.signOut();
      state = const AsyncData(null);
    });
  }
}
