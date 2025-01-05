import 'package:eqdashboard/core/models/data_source/data_source_type.dart';
import 'package:eqdashboard/core/provider/data_source_provider.dart';
import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_history_list_item.dart';
import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_list_state.dart';
import 'package:eqdashboard/features/earthquake/history/data/use_case/earthquake_list_dmdata_polling_use_case.dart';
import 'package:eqdashboard/features/earthquake/history/data/use_case/earthquake_list_dmdata_websocket_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_list_use_case.g.dart';

abstract class EarthquakeListUseCase {
  Future<EarthquakeListState> fetchList({
    required int limit,
    required String? nextToken,
  });

  bool get isSupportingRealtimeUpdate;

  /// リアルタイム更新用のストリーム
  Stream<EarthquakeHistoryListItem> getStream();
}

@Riverpod(keepAlive: true)
EarthquakeListUseCase earthquakeListUseCase(Ref ref) {
  final dataSource = ref.watch(dataSourceProvider);
  return switch (dataSource) {
    DataSourceType.dmdataPolling =>
      ref.watch(earthquakeListDmdataPollingUseCaseProvider),
    DataSourceType.dmdataWebSocket =>
      ref.watch(earthquakeListDmdataWebsocketUseCaseProvider),
    _ => throw UnimplementedError(),
  };
}
