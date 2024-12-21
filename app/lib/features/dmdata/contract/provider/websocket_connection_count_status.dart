import 'package:eqdashboard/features/dmdata/auth/notifier/contract_list_provider.dart';
import 'package:eqdashboard/features/dmdata/contract/model/websocket_connection_count_model.dart';
import 'package:eqdashboard/features/dmdata/websocket/notifier/websocket_list_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'websocket_connection_count_status.g.dart';

@riverpod
Future<WebsocketConnectionCountModel> websocketConnectionCountStatus(
  Ref ref,
) async {
  final contractAsync = await ref.watch(contractListProvider.future);
  final websocketConnectionAsync =
      await ref.watch(webSocketOpenedListProvider.future);

  return WebsocketConnectionCountModel(
    availableCount: websocketConnectionAsync.length,
    totalCount: contractAsync.items.where((item) => item.isValid).fold(
          0,
          (prev, item) => prev + item.connectionCounts,
        ),
  );
}
