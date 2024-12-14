import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_request.freezed.dart';
part 'websocket_request.g.dart';

/// WebSocketリクエストメッセージ
@freezed
class WebSocketRequest with _$WebSocketRequest {
  /// Pingリクエスト
  const factory WebSocketRequest.ping({
    required String type,
    String? pingId,
  }) = WebSocketPingRequest;

  /// Pongリクエスト
  const factory WebSocketRequest.pong({
    required String type,
    String? pingId,
  }) = WebSocketPongRequest;

  factory WebSocketRequest.fromJson(Map<String, dynamic> json) =>
      _$WebSocketRequestFromJson(json);
}
