import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eew_list_notifier_state.freezed.dart';
part 'eew_list_notifier_state.g.dart';

@freezed
class EewListNotifierState with _$EewListNotifierState {
  const factory EewListNotifierState({
    required List<EewListItem> items,
    required String? nextToken,
    required DateTime? lastUpdatedAt,
    required bool isSupportingRealtimeUpdate,
  }) = _EewListNotifierState;

  factory EewListNotifierState.fromJson(Map<String, dynamic> json) =>
      _$EewListNotifierStateFromJson(json);
}
