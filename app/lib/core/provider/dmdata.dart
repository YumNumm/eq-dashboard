import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/auth/notifier/auth_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synchronized/synchronized.dart';

part 'dmdata.g.dart';

@Riverpod(keepAlive: true)
DmdataApi dmdataApi(Ref ref) => DmdataApi(
      options: const DmdataApiUrlOptions(),
      dio: ref.watch(dmdataDioProvider),
    );

@Riverpod(keepAlive: true)
Dio dmdataDio(Ref ref) {
  final dio = Dio();
  final authNotifier = ref.watch(authProvider.notifier);

  dio.interceptors.add(
    _DmdataInterceptor(authNotifier: authNotifier),
  );
  return dio;
}

class _DmdataInterceptor extends Interceptor {
  _DmdataInterceptor({
    required Auth authNotifier,
  }) : _authNotifier = authNotifier;

  final Auth _authNotifier;
  final _lock = Lock();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) =>
      unawaited(
        () async {
          log('onRequest: ${options.uri}', name: 'DmdataInterceptor');
          final result = await Result.capture(
            () async => _lock.synchronized(
              () async => _authNotifier.updateTokenIfNeeded(),
            ),
          );
          final _ = switch (result) {
            Failure(:final error) => handler.reject(
                DioException(
                  requestOptions: options,
                  error: error,
                ),
              ),
            Success(:final value) when value != null => () {
                options.headers[HttpHeaders.authorizationHeader] =
                    'Bearer ${value.accessToken}';
                super.onRequest(options, handler);
              }(),
            Success() => handler.reject(
                DioException(
                  requestOptions: options,
                  error: Exception('Unauthorized'),
                ),
              ),
          };
        }(),
      );
}
