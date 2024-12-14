import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_start.freezed.dart';
part 'socket_start.g.dart';

/// WebSocket開始レスポンス
@freezed
class SocketStartResponse with _$SocketStartResponse implements DmdataResponse {
  const factory SocketStartResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// WebSocketに接続するためのticket
    required String ticket,

    /// WebSocketへの接続情報
    required WebSocketInfo websocket,

    /// WebSocketで受け取る配信区分
    required List<String> classifications,

    /// including の時のみ、XML電文のテストをWebsocketで受け取る
    required String test,

    /// WebSocketで受け取る情報フォーマット
    required List<String> formats,

    /// WebSocketで受け取るデータ種類コードリスト
    /// Null時は受け取る配信区分の全部を受け取る
    List<String>? types,

    /// リクエストで指定したアプリ名
    String? appName,
  }) = _SocketStartResponse;

  factory SocketStartResponse.fromJson(Map<String, dynamic> json) =>
      _$SocketStartResponseFromJson(json);
}

/// WebSocketへの接続情報
@freezed
class WebSocketInfo with _$WebSocketInfo {
  const factory WebSocketInfo({
    /// WebSocketID
    required int id,

    /// WebSocketの接続先URLでticket付き
    required String url,

    /// WebSocketのProtocolで配列の要素は `dmdata.v2` 一つで固定
    required List<String> protocol,

    /// キーの有効時間で単位は秒。値は 300 で固定
    required int expiration,
  }) = _WebSocketInfo;

  factory WebSocketInfo.fromJson(Map<String, dynamic> json) =>
      _$WebSocketInfoFromJson(json);
}
