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
    /// ��震発生時刻を秒単位で、ISO8601の日本時間で記載する
    /// 100gal検知報などの場合には出現しない
    required String? originTime,

    /// 地震検知時刻を秒単位で、ISO8601の日本時間で記載する
    required String arrivalTime,

    /// 仮定震源要素の時出現し、`仮定震源要素` が入る
    required String? condition,

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

    /// 震源の場所が陸域か海域かを判別する
    /// 取りうる値は `内陸`、`海域`
    /// 仮定震源要素時や、100gal検知報などの場合には出現しない
    String? landOrSea,
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

    /// 細分化地域内における予想
    required List<EewIntensityRegion>? regions,

    /// 最大予測長周期地震動階級
    /// VXSE43、VXSE45時のみで震源の深さが150km以下の時出現
    ForecastMaxLgInt? forecastMaxLgInt,

    /// 予測震度・予測長周期地震動階級付加要素
    EewIntensityAppendix? appendix,
  }) = _EewIntensity;

  factory EewIntensity.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityFromJson(json);
}

/// 最大予測震度
@freezed
class ForecastMaxInt with _$ForecastMaxInt {
  const factory ForecastMaxInt({
    /// 最大予測震度の下限
    /// `0`, `1`, `2`, `3`, `4`, `5-`, `5+`, `6-`, `6+`, `7`, `不明` で記載する
    required String from,

    /// 最大予測震度の上限
    /// `0`, `1`, `2`, `3`, `4`, `5-`, `5+`, `6-`, `6+`, `7`, `over`, `不明` で記載する
    required String to,
  }) = _ForecastMaxInt;

  factory ForecastMaxInt.fromJson(Map<String, dynamic> json) =>
      _$ForecastMaxIntFromJson(json);
}

/// 最大予測長周期地震動階級
@freezed
class ForecastMaxLgInt with _$ForecastMaxLgInt {
  const factory ForecastMaxLgInt({
    /// 最大予測長周期地震動階級の下限
    /// `0`, `1`, `2`, `3`, `4`, `不明` で記載する
    required String from,

    /// 最大予測長周期地震動階級の上限
    /// `0`, `1`, `2`, `3`, `4`, `over`, `不明` で記載する
    required String to,
  }) = _ForecastMaxLgInt;

  factory ForecastMaxLgInt.fromJson(Map<String, dynamic> json) =>
      _$ForecastMaxLgIntFromJson(json);
}

/// 予測震度・予測長周期地震動階級付加要素
@freezed
class EewIntensityAppendix with _$EewIntensityAppendix {
  const factory EewIntensityAppendix({
    /// 最大予測震度変化
    /// 0: ほとんど変化なし
    /// 1: 最大予測震度が1.0以上大きくなった
    /// 2: 最大予測震度が1.0以上小さくなった
    required String maxIntChange,

    /// 最大予測値変化の理由
    /// 0: 変化なし
    /// 1: 主としてＭが変化したため(1.0以上)
    /// 2: 主として震央位置が変化したため(10.0km以上)
    /// 3: M及び震央位置が変化したため(1と2の複合条件)
    /// 4: 震源の深さが変化したため(上記のいずれにもあてはまらず、30.0km以上の変化)
    /// 9: PLUM法による予測により変化したため
    required String maxIntChangeReason,

    /// 最大予測長周期地震動階級変化
    /// 0: 変化なし
    /// 1: 最大予測長周期地震動階級が1以上大きくなった
    /// 2: 最大予測長周期地震動階級が1以上小さくなった
    String? maxLgIntChange,
  }) = _EewIntensityAppendix;

  factory EewIntensityAppendix.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityAppendixFromJson(json);
}

/// 細分化地域内における予想
@freezed
class EewIntensityRegion with _$EewIntensityRegion {
  const factory EewIntensityRegion({
    /// 細分化地域コード
    required String code,

    /// 細分化地域名
    required String name,

    /// この細分化地域でPLUM法による震度予測であるか示す
    required bool isPlum,

    /// この細分化地域で警報発表しているかどうかを示す
    required bool isWarning,

    /// 最大予測震度
    required ForecastMaxInt forecastMaxInt,

    /// 緊急地震速報の種別
    required EewKind kind,

    /// 最大予測長周期地震動階級
    /// VXSE43、VXSE45時のみで震源の深さが150km以下の時出現
    ForecastMaxLgInt? forecastMaxLgInt,

    /// この細分化地域で主要動到達に関する状況等を示す
    /// 主要動の到達予測時刻を過ぎており、既に主要動が到達していると推測される時には出現する
    String? condition,

    /// この細分化地域で主要動の到達予測時刻を示す
    /// 主要動の到達予測時刻以前であり、主要動が未到達と推測される時には、本要素が出現する
    /// 該当区域についてPLUM法で予測している時には、「PLUM法でその震度（階級震度）を初めて予測した時刻」を示す
    String? arrivalTime,
  }) = _EewIntensityRegion;

  factory EewIntensityRegion.fromJson(Map<String, dynamic> json) =>
      _$EewIntensityRegionFromJson(json);
}

/// 緊急地震速報の種別
@freezed
class EewKind with _$EewKind {
  const factory EewKind({
    /// 緊急地震速報の種別コード
    required String code,

    /// 緊急地震速報の種別名
    required String name,
  }) = _EewKind;

  factory EewKind.fromJson(Map<String, dynamic> json) =>
      _$EewKindFromJson(json);
}
