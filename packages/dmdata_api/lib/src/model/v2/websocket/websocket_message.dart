import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_message.freezed.dart';
part 'websocket_message.g.dart';

/// WebSocketメッセージの基本クラス
@Freezed(
  unionKey: 'type',
)
class WebSocketMessage with _$WebSocketMessage {
  /// 開始メッセージ
  const factory WebSocketMessage.start({
    required String type,
    required int socketId,
    required List<String> classifications,
    required List<String> types,
    required String test,
    required List<String> formats,
    required String time,
    String? appName,
  }) = WebSocketStartMessage;

  /// Pingメッセージ
  const factory WebSocketMessage.ping({
    required String type,
    required String pingId,
  }) = WebSocketPingMessage;

  /// Pongメッセージ
  const factory WebSocketMessage.pong({
    required String type,
    String? pingId,
  }) = WebSocketPongMessage;

  /// データメッセージ
  const factory WebSocketMessage.data({
    required String type,
    required String version,
    required String classification,
    required String id,
    required List<WebSocketPassing> passing,
    required WebSocketHead head,
    required String format,
    required String encoding,
    required String body,
    WebSocketXmlReport? xmlReport,
    String? compression,
  }) = WebSocketDataMessage;

  /// エラーメッセージ
  const factory WebSocketMessage.error({
    required String type,
    required String error,
    required int code,
    required bool close,
  }) = WebSocketErrorMessage;

  factory WebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$WebSocketMessageFromJson(json);
}

/// 通過情報
@freezed
class WebSocketPassing with _$WebSocketPassing {
  const factory WebSocketPassing({
    required String name,
    required String time,
  }) = _WebSocketPassing;

  factory WebSocketPassing.fromJson(Map<String, dynamic> json) =>
      _$WebSocketPassingFromJson(json);
}

/// ヘッダ情報
@freezed
class WebSocketHead with _$WebSocketHead {
  const factory WebSocketHead({
    required String type,
    required String author,
    required String time,
    required bool test,
    String? target,
    String? designation,
    bool? xml,
  }) = _WebSocketHead;

  factory WebSocketHead.fromJson(Map<String, dynamic> json) =>
      _$WebSocketHeadFromJson(json);
}

/// XML電文のControl,Head情報
@freezed
class WebSocketXmlReport with _$WebSocketXmlReport {
  const factory WebSocketXmlReport({
    required WebSocketControl control,
    required WebSocketHead head,
  }) = _WebSocketXmlReport;

  factory WebSocketXmlReport.fromJson(Map<String, dynamic> json) =>
      _$WebSocketXmlReportFromJson(json);
}

/// Control部情報
@freezed
class WebSocketControl with _$WebSocketControl {
  const factory WebSocketControl({
    required String title,
    required String dateTime,
    required String status,
    required String editorialOffice,
    required String publishingOffice,
  }) = _WebSocketControl;

  factory WebSocketControl.fromJson(Map<String, dynamic> json) =>
      _$WebSocketControlFromJson(json);
}

/// Head部情報
@freezed
class WebSocketReportHead with _$WebSocketReportHead {
  const factory WebSocketReportHead({
    required String title,
    required String reportDateTime,
    required String targetDateTime,
    required String infoType,
    required String infoKind,
    required String infoKindVersion,
    String? eventId,
    String? serial,
    String? headline,
  }) = _WebSocketReportHead;

  factory WebSocketReportHead.fromJson(Map<String, dynamic> json) =>
      _$WebSocketReportHeadFromJson(json);
}
