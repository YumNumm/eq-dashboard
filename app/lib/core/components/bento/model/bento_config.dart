import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bento_config.freezed.dart';
part 'bento_config.g.dart';

@freezed
class BentoConfig with _$BentoConfig {
  const factory BentoConfig({
    required String id,
    required BentoGridSize size,
    required int order,
  }) = _BentoConfig;

  factory BentoConfig.fromJson(Map<String, dynamic> json) =>
      _$BentoConfigFromJson(json);
}
