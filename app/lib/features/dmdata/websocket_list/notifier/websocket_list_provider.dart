import 'package:eqdashboard/features/dmdata/websocket_list/model/websocket_ui_model.dart';
import 'package:eqdashboard/features/dmdata/websocket_list/repository/websocket_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'websocket_list_provider.g.dart';

@riverpod
Future<List<WebsocketListItemModel>> webSocketOpenedList(Ref ref) async {
  final repository = ref.watch(webSocketListRepositoryProvider);
  return repository.getSocketList();
}
