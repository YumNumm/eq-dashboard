import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:eqdashboard/features/dmdata/websocket/model/websocket_ui_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'websocket_list_repository.g.dart';

@Riverpod(keepAlive: true)
WebsocketListRepository webSocketListRepository(Ref ref) =>
    WebsocketListRepository(
      ref.watch(dmdataApiProvider).v2.socket,
    );

class WebsocketListRepository {
  WebsocketListRepository(this.api);

  final SocketApiClient api;

  Future<List<WebsocketListItemModel>> getSocketList() async {
    final result = await api.getSocketList(
      status: 'open',
      limit: 100,
    );
    return result.items
        .map(
          (e) => WebsocketListItemModel(
            id: e.id.toString(),
            status: SocketStatus.values.byName(e.status),
            classifications: e.classifications,
            test: e.test == 'including',
            start: DateTime.parse(e.start),
            ipAddress: e.ipAddress,
            server: e.server,
            appName: e.appName,
          ),
        )
        .toList();
  }
}
