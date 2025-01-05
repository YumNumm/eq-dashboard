import 'package:dmdata_api/dmdata_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmdata_websocket_message_model.freezed.dart';

@freezed
class DmdataWebsocketMessageModel with _$DmdataWebsocketMessageModel {
  const factory DmdataWebsocketMessageModel({
    @JsonKey(toJson: _streamToJson) required Stream<WebSocketMessage> stream,
    String? lastPingId,
    DateTime? lastPingAt,
    Duration? lastPingDuration,
    DateTime? lastPongAt,
  }) = _DmdataWebsocketMessageModel;
}

String _streamToJson(Stream<WebSocketMessage> stream) => stream.toString();
