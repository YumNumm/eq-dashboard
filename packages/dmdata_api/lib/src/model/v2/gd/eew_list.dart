import 'package:dmdata_api/src/model/v2/component/earthquake_component.dart';
import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eew_list.freezed.dart';
part 'eew_list.g.dart';

/// 緊急地震速報リストのレスポンス
@freezed
class EewListResponse with _$EewListResponse implements DmdataResponse {
  const factory EewListResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// 緊急地震速報リスト
    required List<EewListItem> items,

    /// 次のリソースがある場合に出現
    String? nextToken,
  }) = _EewListResponse;

  factory EewListResponse.fromJson(Map<String, dynamic> json) =>
      _$EewListResponseFromJson(json);
}

/// 緊急地震速報リストのアイテム
@freezed
class EewListItem with _$EewListItem {
  const factory EewListItem({
    /// 受信ID
    required dynamic id,

    /// 緊急地震速報のEventID
    required String eventId,

    /// 緊急地震速報のEventIDに対する報数
    required int serial,

    /// この緊急地震速報（最終報）を発表した時刻
    required String dateTime,

    /// このEventIDに対してこの内容が最終であるかどうかを示し、このAPIでは常に true とする
    required bool isLastInfo,

    /// このEventIDに対して緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
    required bool isCanceled,

    /// このEventIDに対して、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
    /// 取消時には出現しない
    bool? isWarning,

    /// 予測震源要素
    /// 取消時は出現しない
    EewEarthquake? earthquake,

    /// 予測震度要素
    /// 取消時・震度未計算時は出現しない
    EewIntensity? intensity,

    /// フリーテキストで表現したい場合に出現し、これを記述する
    String? text,
  }) = _EewListItem;

  factory EewListItem.fromJson(Map<String, dynamic> json) =>
      _$EewListItemFromJson(json);
}

/// 予測震源要素
@freezed
class EewEarthquake with _$EewEarthquake {
  const factory EewEarthquake({
    /// ��震検知時刻
    required String arrivalTime,

    /// 震源要素
    required EewHypocenter hypocenter,

    /// マグニチュード要素
    required Magnitude magnitude,
  }) = _EewEarthquake;

  factory EewEarthquake.fromJson(Map<String, dynamic> json) =>
      _$EewEarthquakeFromJson(json);
}

/// 緊急地震速報の震源要素
@freezed
class EewHypocenter with _$EewHypocenter {
  const factory EewHypocenter({
    /// 震央地名コード
    required String code,

    /// 震央地名
    required String name,

    /// 震源要素の位置情報
    required Coordinate coordinate,

    /// 深さ要素
    required Depth depth,

    /// 震源の補足情報
    required EewReduce reduce,

    /// 震源要素の精度情報
    required EewAccuracy accuracy,
  }) = _EewHypocenter;

  factory EewHypocenter.fromJson(Map<String, dynamic> json) =>
      _$EewHypocenterFromJson(json);
}

/// 震源の補足情報
@freezed
class EewReduce with _$EewReduce {
  const factory EewReduce({
    /// 代表地域コード
    required String code,

    /// 代表地域名
    required String name,
  }) = _EewReduce;

  factory EewReduce.fromJson(Map<String, dynamic> json) =>
      _$EewReduceFromJson(json);
}

/// 震源要素の精度情報
@freezed
class EewAccuracy with _$EewAccuracy {
  const factory EewAccuracy({
    /// 震央位置の精度値
    required List<String> epicenters,

    /// 深さの精度値
    required String depth,

    /// マグニチュードの精度値
    required String magnitudeCalculation,

    /// マグニチュード計算使用観測点数
    required String numberOfMagnitudeCalculation,
  }) = _EewAccuracy;

  factory EewAccuracy.fromJson(Map<String, dynamic> json) =>
      _$EewAccuracyFromJson(json);
}

/// 予測震度要素
@freezed
class EewIntensity with _$EewIntensity {
  const factory EewIntensity({
    /// 最大予測震度
    required ForecastMaxInt forecastMaxInt,
  }) = _EewIntensity;

  factory EewIntensity.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityFromJson(json);
}

/// 最大予測震度
@freezed
class ForecastMaxInt with _$ForecastMaxInt {
  const factory ForecastMaxInt({
    /// 最大予測震度の下限
    required String from,

    /// 最大予測震度の上限
    required String to,
  }) = _ForecastMaxInt;

  factory ForecastMaxInt.fromJson(Map<String, dynamic> json) =>
      _$ForecastMaxIntFromJson(json);
}
