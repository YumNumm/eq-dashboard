import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_history_dmdata_repository.g.dart';

@Riverpod(keepAlive: true)
EarthquakeHistoryDmdataRepository earthquakeHistoryDmdataRepository(
  Ref ref,
) =>
    EarthquakeHistoryDmdataRepository(
      api: ref.watch(dmdataApiProvider).v2.gd.earthquake,
    );

class EarthquakeHistoryDmdataRepository {
  EarthquakeHistoryDmdataRepository({
    required GdEarthquakeApiClient api,
  }) : _api = api;

  final GdEarthquakeApiClient _api;

  /// 地震情報の一覧を取得する
  Future<EarthquakeListResponse> fetchList({
    int limit = 100,
    String? nextToken,
  }) async =>
      _api.getEarthquakeList(
        limit: limit,
        nextToken: nextToken,
      );

  /// 特定のIDの地震情報を取得する
  // Future<EarthquakeData>
  // fetchById(String id) async => _api.getEarthquake(id);
}
