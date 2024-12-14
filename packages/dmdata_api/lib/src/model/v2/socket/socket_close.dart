import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_close.freezed.dart';
part 'socket_close.g.dart';

/// WebSocket終了レスポンス
@freezed
class SocketCloseResponse with _$SocketCloseResponse implements DmdataResponse {
  const factory SocketCloseResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,
  }) = _SocketCloseResponse;

  factory SocketCloseResponse.fromJson(Map<String, dynamic> json) =>
      _$SocketCloseResponseFromJson(json);
}
