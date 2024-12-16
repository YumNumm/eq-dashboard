import 'package:eqdashboard/core/models/intensity/jma_forecast_intensity.dart';
import 'package:eqdashboard/core/models/intensity/jma_forecast_lg_intensity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eew_list_item.freezed.dart';
part 'eew_list_item.g.dart';

@freezed
class EewListItem with _$EewListItem {
  const factory EewListItem({
    required String eventId,

    /// 報数
    required int serialNo,

    /// 最終報かどうか
    required bool isLastReport,

    /// 最終更新時刻
    required DateTime updatedAt,

    /// キャンセルされたかどうか
    required bool isCanceled,

    /// 警報が発表されたかどうか
    /// キャンセル報の場合は `null`
    required bool? isWarning,
    required String? text,

    /// キャンセル報の場合は `null`
    required EewEarthquake? earthquake,

    /// キャンセル報の場合は `null`
    required EewIntensity? intensity,

    /// キャンセル報の場合は `null`
    required List<EewIntensityRegion>? intensityRegions,
  }) = _EewListItem;

  factory EewListItem.fromJson(Map<String, dynamic> json) =>
      _$EewListItemFromJson(json);
}

@freezed
class EewEarthquake with _$EewEarthquake {
  const factory EewEarthquake({
    /// 地震発生時刻
    required DateTime? originTime,

    /// 地震検知時刻
    required DateTime? detectionTime,

    /// 仮定震源要素かどうか
    required bool isHypothetical,

    /// 震源地名コード
    required String hypocenterCode,

    /// 震源地名
    required String hypocenterName,

    /// 震源の緯度
    required double? latitude,

    /// 震源の経度
    required double? longitude,

    /// 震源の深さ
    /// `null`の場合 depthCondition はnot null
    required int? depth,

    /// 震源の深さ 例外表現
    /// `null`の場合 depth はnot null
    required EewDepthCondition? depthCondition,

    /// マグニチュード
    required double? magnitude,

    /// マグニチュードの例外表現
    /// `null`の場合 magnitude はnot null
    required String? magnitudeCondition,
  }) = _EewEarthquake;

  factory EewEarthquake.fromJson(Map<String, dynamic> json) =>
      _$EewEarthquakeFromJson(json);
}

enum EewDepthCondition {
  /// ごく浅い
  veryShallow,

  /// 700km以上
  moreThan700km,

  /// 深さ不明
  unknown,
  ;
}

@freezed
class EewIntensity with _$EewIntensity {
  const factory EewIntensity({
    required JmaForecastIntensity forecastMaxIntensity,
    required JmaForecastLgIntensity? forecastMaxLgIntensity,
  }) = _EewIntensity;

  factory EewIntensity.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityFromJson(json);
}

@freezed
class EewIntensityRegion with _$EewIntensityRegion {
  const factory EewIntensityRegion({
    required String code,
    required String name,
    required bool isPlum,
    required bool isWarning,
    required JmaForecastIntensity forecastIntensity,
    required JmaForecastLgIntensity? forecastLgIntensity,

    /// 既に主要動が到達したかどうか
    required bool isSWaveArrived,

    /// 主要動の到達予想時刻
    /// `isPlum == true`の場合は、「PLUM法でその階級震度を初めて予測した時刻」
    required DateTime? sWaveArrivalEstimatedAt,
  }) = _EewIntensityRegion;

  factory EewIntensityRegion.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityRegionFromJson(json);
}
