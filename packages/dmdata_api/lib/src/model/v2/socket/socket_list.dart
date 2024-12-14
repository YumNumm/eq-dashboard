import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_list.freezed.dart';
part 'socket_list.g.dart';

/// WebSocket一覧のレスポンス
@freezed
class SocketListResponse with _$SocketListResponse implements DmdataResponse {
  const factory SocketListResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// WebSocket情報のリスト
    required List<SocketItem> items,

    /// 次のリソースを取得するためのトークン
    String? nextToken,
  }) = _SocketListResponse;

  factory SocketListResponse.fromJson(Map<String, dynamic> json) =>
      _$SocketListResponseFromJson(json);
}

/// WebSocket情報
@freezed
class SocketItem with _$SocketItem {
  const factory SocketItem({
    /// WebSocket ID
    required dynamic id,

    /// WebSocketで受け取るデータ種類コードリスト
    /// Null時は受け取る配信区分の全部を受け取る
    required List<String>? types,

    /// including の時のみ、XML電文のテストをWebsocketで受け取る
    required String test,

    /// WebSocketで受け取る配信区分
    required List<String> classifications,

    /// 接続状態
    /// 接続待機・期限切れ: waiting、接続中: open、接続終了: closed
    required String status,

    /// 作成時間、または接続開始時間
    required String start,

    /// WebSocketに接続するためのticket
    String? ticket,

    /// 接続元IPアドレス
    String? ipAddress,

    /// 接続先のWebSocketサーバー名
    String? server,

    /// 接続終了時間
    String? end,

    /// Ping-Pongチェック時間
    String? ping,

    /// アプリケーション名
    String? appName,
  }) = _SocketItem;

  factory SocketItem.fromJson(Map<String, dynamic> json) =>
      _$SocketItemFromJson(json);
}
