import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_history_list_item.freezed.dart';
part 'earthquake_history_list_item.g.dart';

@freezed
class EarthquakeHistoryListItem with _$EarthquakeHistoryListItem {
  const factory EarthquakeHistoryListItem({
    /// 地震情報のEventId
    required String eventId,

    /// 地震検知時刻
    required DateTime arrivalTime,

    /// 地震発生時刻
    /// 震度速報のみの場合は`null`
    required DateTime? originTime,

    /// 最大震度
    /// 観測した震度がない場合は`null`
    required JmaIntensity? maxIntensity,

    /// 観測した最大の長周期地震動階級
    /// 場合による
    required JmaLgIntensity? maxLgIntensity,

    /// 震源
    required EarthquakeHistoryHypocenter? hypocenter,

    /// 地震の種類
    required EarthquakeType? earthquakeType,
  }) = _EarthquakeHistoryListItem;

  factory EarthquakeHistoryListItem.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeHistoryListItemFromJson(json);
}

@freezed
class EarthquakeHistoryHypocenter with _$EarthquakeHistoryHypocenter {
  const factory EarthquakeHistoryHypocenter({
    required String name,
    required String code,
    required double? latitude,
    required double? longitude,
    required int? depth,
    required DepthCondition? depthCondition,
    required double? magnitude,
    required String? magnitudeCondition,
  }) = _EarthquakeHistoryHypocenter;

  factory EarthquakeHistoryHypocenter.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeHistoryHypocenterFromJson(json);
}

enum DepthCondition {
  veryShallow('ごく浅い'),
  moreThan700km('７００ｋｍ以上'),
  unknown('不明'),
  ;

  const DepthCondition(this.value);
  final String value;
}

enum EarthquakeType {
  normal('国内地震情報'),
  distant('遠地地震情報'),
  volcanicEruption('噴火情報'),
  ;

  const EarthquakeType(this.value);
  final String value;
}
