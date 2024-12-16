import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jma_forecast_intensity.freezed.dart';
part 'jma_forecast_intensity.g.dart';

@freezed
class JmaForecastIntensity with _$JmaForecastIntensity {
  const factory JmaForecastIntensity({
    required JmaIntensity from,
    required JmaIntensity to,
  }) = _JmaForecastIntensity;

  factory JmaForecastIntensity.fromJson(Map<String, dynamic> json) =>
      _$JmaForecastIntensityFromJson(json);
}

extension JmaForecastIntensityExtension on JmaForecastIntensity {
  (JmaIntensity, bool isOver) get intensity {
    if (to == JmaIntensity.over) {
      return (from, true);
    }
    return (to, false);
  }
}
