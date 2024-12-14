import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime_station.freezed.dart';
part 'realtime_station.g.dart';

/// リアルタイム震度観測点のパラメータレスポンス
@freezed
class RealtimeStationResponse with _$RealtimeStationResponse implements DmdataResponse {
  const factory RealtimeStationResponse({
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
    required List<RealtimeStationItem> items,
  }) = _RealtimeStationResponse;

  factory RealtimeStationResponse.fromJson(Map<String, dynamic> json) =>
      _$RealtimeStationResponseFromJson(json);
}

/// 観測点データ
@freezed
class RealtimeStationItem with _$RealtimeStationItem {
  const factory RealtimeStationItem({
    /// 一次細分化地域
    required Region region,

    /// 観測点コード（XML）
    required String code,

    /// 観測点名
    required String name,

    /// データの運用状態
    /// 現: 運用中
    /// 新規: パラメータ変更時刻より運用開始
    /// 廃止: パラメータ変更時刻をもって運用終了
    required String status,

    /// 所属する機関
    required String owner,

    /// 所在する緯度
    required String latitude,

    /// 所在する経度
    required String longitude,
  }) = _RealtimeStationItem;

  factory RealtimeStationItem.fromJson(Map<String, dynamic> json) =>
      _$RealtimeStationItemFromJson(json);
}

/// 一次細分化地域
@freezed
class Region with _$Region {
  const factory Region({
    /// 一次細分化地域コード
    required String code,

    /// 一次細分化地域名
    required String name,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);
}
