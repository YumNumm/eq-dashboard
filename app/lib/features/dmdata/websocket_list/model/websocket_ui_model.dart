import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_ui_model.freezed.dart';
part 'websocket_ui_model.g.dart';

@freezed
class WebsocketListItemModel with _$WebsocketListItemModel {
  const factory WebsocketListItemModel({
    required String id,
    required SocketStatus status,
    required List<String> classifications,
    required bool test,
    required DateTime start,
    required String? ipAddress,
    required String? server,
    required String? appName,
  }) = _WebsocketUiModel;

  factory WebsocketListItemModel.fromJson(Map<String, dynamic> json) =>
      _$WebsocketListItemModelFromJson(json);
}

enum SocketStatus {
  open,
  closed,
  waiting,
}
