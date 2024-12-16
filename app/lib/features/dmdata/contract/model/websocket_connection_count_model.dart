import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_connection_count_model.freezed.dart';
part 'websocket_connection_count_model.g.dart';

@freezed
class WebsocketConnectionCountModel with _$WebsocketConnectionCountModel {
  const factory WebsocketConnectionCountModel({
    required int availableCount,
    required int totalCount,
  }) = _WebsocketConnectionCountModel;

  factory WebsocketConnectionCountModel.fromJson(Map<String, dynamic> json) =>
      _$WebsocketConnectionCountModelFromJson(json);
}
