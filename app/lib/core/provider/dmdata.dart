import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dio.dart';
import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dmdata.g.dart';

@Riverpod(keepAlive: true)
DmdataApi dmdataApi(Ref ref) => DmdataApi(
      options: const DmdataApiUrlOptions(),
      dio: ref.watch(dmdataDioProvider),
    );

@Riverpod(keepAlive: true)
Dio dmdataDio(Ref ref) {
  final dio = ref.watch(dioProvider);
  final authNotifier = ref.watch(authProvider.notifier);

  dio.interceptors.add(
    _DmdataInterceptor(authNotifier: authNotifier),
  );
  return dio;
}

class _DmdataInterceptor extends Interceptor {
  _DmdataInterceptor({
    required this.authNotifier,
  });

  final Auth authNotifier;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) =>
      unawaited(
        () async {
          final result = await authNotifier.updateTokenIfNeeded();
          if (result == null) {
            throw Exception('ログインしてください');
          }
          options.headers[HttpHeaders.authorizationHeader] =
              'Bearer ${result.accessToken}';

          super.onRequest(options, handler);
        }(),
      );
}
