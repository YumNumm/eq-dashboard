import 'package:eqdashboard/core/components/bento/model/bento_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bento_saved_state.freezed.dart';
part 'bento_saved_state.g.dart';

@freezed
class BentoSavedState with _$BentoSavedState {
  const factory BentoSavedState({
    required List<BentoConfig> configs,
  }) = _BentoSavedState;

  factory BentoSavedState.fromJson(Map<String, dynamic> json) =>
      _$BentoSavedStateFromJson(json);
}
