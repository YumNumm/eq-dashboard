import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_history_list_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_list_state.freezed.dart';
part 'earthquake_list_state.g.dart';

@freezed
class EarthquakeListState with _$EarthquakeListState {
  const factory EarthquakeListState({
    required List<EarthquakeHistoryListItem> items,
    required String? nextToken,
    required DateTime? lastUpdatedAt,
    required bool isSupportingRealtimeUpdate,
  }) = _EarthquakeListState;

  factory EarthquakeListState.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeListStateFromJson(json);
}
