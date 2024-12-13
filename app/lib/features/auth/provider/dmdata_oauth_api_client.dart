import 'package:dmdata_oauth_flutter/dmdata_oauth_flutter.dart';
import 'package:eqdashboard/core/provider/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dmdata_oauth_api_client.g.dart';

@Riverpod(keepAlive: true)
DmdataOauthApiClient dmdataOauthApiClient(Ref ref) {
  return DmdataOauthApiClient(
    ref.watch(dioProvider),
  );
}
