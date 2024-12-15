import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jma_forecast_lg_intensity.freezed.dart';
part 'jma_forecast_lg_intensity.g.dart';

@freezed
class JmaForecastLgIntensity with _$JmaForecastLgIntensity {
  const factory JmaForecastLgIntensity({
    required JmaLgIntensity from,
    required JmaLgIntensity to,
  }) = _JmaForecastLgIntensity;

  factory JmaForecastLgIntensity.fromJson(Map<String, dynamic> json) =>
      _$JmaForecastLgIntensityFromJson(json);
}

extension JmaForecastLgIntensityExtension on JmaForecastLgIntensity {
  (JmaLgIntensity, bool isOver) get intensity {
    if (to == JmaLgIntensity.over) {
      return (from, true);
    }
    return (to, false);
  }
}
