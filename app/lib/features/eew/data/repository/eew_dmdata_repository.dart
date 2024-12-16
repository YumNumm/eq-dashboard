import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_dmdata_repository.g.dart';

@Riverpod(keepAlive: true)
EewDmdataRepository eewDmdataRepository(Ref ref) => EewDmdataRepository(
      api: ref.watch(dmdataApiProvider).v2.gd.eew,
    );

class EewDmdataRepository {
  EewDmdataRepository({
    required GdEewApiClient api,
  }) : _api = api;

  final GdEewApiClient _api;

  /// EEWの一覧を取得する
  Future<EewListResponse> fetchList({
    int limit = 100,
    String? nextToken,
  }) async =>
      _api.getEewList(
        limit: limit,
        nextToken: nextToken,
      );

  /// 特定のIDのEEWを取得する
  // Future<EewData> fetchById(String id) async => _api.getEew(id);
}
