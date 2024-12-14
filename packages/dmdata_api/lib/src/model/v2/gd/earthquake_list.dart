import 'package:dmdata_api/src/model/v2/component/earthquake_component.dart';
import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_list.freezed.dart';
part 'earthquake_list.g.dart';

/// 地震情報リストのレスポンス
@freezed
class EarthquakeListResponse
    with _$EarthquakeListResponse
    implements DmdataResponse {
  const factory EarthquakeListResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// 地震情報リスト
    required List<EarthquakeListItem> items,

    /// PuLL時に使用する
    required String nextPooling,

    /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
    required int nextPoolingInterval,

    /// 次のリソースがある場合に出現
    String? nextToken,
  }) = _EarthquakeListResponse;

  factory EarthquakeListResponse.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeListResponseFromJson(json);
}

/// 地震情報リストのアイテム
@freezed
class EarthquakeListItem with _$EarthquakeListItem {
  const factory EarthquakeListItem({
    /// ID
    /// `int` or `String<int>`
    required dynamic id,

    /// 国内地震情報か、遠地地震情報かを区別する
    /// `normal` は 国内地震情報（震源・震度に関する情報など）、`distant` は 遠地地震情報
    required String type,

    /// 地震情報のEventID
    required String eventId,

    /// 地震検知時刻
    required String arrivalTime,

    /// 地震発生時刻
    /// 震度速報のみの場合は出現しない
    String? originTime,

    /// 震源要素
    /// 震度速報のみの場合は出現しない
    Hypocenter? hypocenter,

    /// マグニチュード要素
    /// 震度速報のみの場合は出現しない
    Magnitude? magnitude,

    /// 最大震度、観測した震度がない場合はnullとする
    String? maxInt,

    /// 観測した最大の長周期地震動階級
    /// 場合による
    String? maxLgInt,

    /// 長周期地震動に関する観測情報の種類
    /// 場合による
    String? lgCategory,
  }) = _EarthquakeListItem;

  factory EarthquakeListItem.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeListItemFromJson(json);
}
