import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_station.freezed.dart';
part 'earthquake_station.g.dart';

/// 震度観測地点のパラメータレスポンス
@freezed
class EarthquakeStationResponse with _$EarthquakeStationResponse implements DmdataResponse {
  const factory EarthquakeStationResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// 気象庁によるパラメータ変更時刻
    required String changeTime,

    /// データのバージョン
    required String version,

    /// 観測点データ
    required List<EarthquakeStationItem> items,
  }) = _EarthquakeStationResponse;

  factory EarthquakeStationResponse.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeStationResponseFromJson(json);
}

/// 観測点データ
@freezed
class EarthquakeStationItem with _$EarthquakeStationItem {
  const factory EarthquakeStationItem({
    /// 一次細分化地域
    required Region region,

    /// 市区町村
    required City city,

    /// 観測点コード
    required String noCode,

    /// 観測点コード（XML）
    required String code,

    /// 観測点名
    required String name,

    /// 観測点名（カナ）
    required String kana,

    /// データの運用状態
    /// 現: 運用中
    /// 変更: 名称、住所、位置情報の修正
    /// 新規: パラメータ変更時刻より運用開始
    /// 廃止: パラメータ変更時刻をもって運用終了
    required String status,

    /// 所属する機関
    required String owner,

    /// 所在する緯度
    required String latitude,

    /// 所在する経度
    required String longitude,
  }) = _EarthquakeStationItem;

  factory EarthquakeStationItem.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeStationItemFromJson(json);
}

/// 一次細分化地域
@freezed
class Region with _$Region {
  const factory Region({
    /// 一次細分化地域コード
    required String code,

    /// 一次細分化地域名
    required String name,

    /// 一次細分化地域名（カナ）
    required String kana,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);
}

/// 市区町村
@freezed
class City with _$City {
  const factory City({
    /// 市区町村コード
    required String code,

    /// 市区町村名
    required String name,

    /// 市区町村名（カナ）
    required String kana,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
