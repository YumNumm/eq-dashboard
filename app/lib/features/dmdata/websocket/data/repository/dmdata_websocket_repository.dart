import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dmdata_websocket_repository.g.dart';

@Riverpod(keepAlive: true)
DmdataWebsocketRepository dmdataWebsocketRepository(Ref ref) =>
    DmdataWebsocketRepository(
      api: ref.watch(dmdataApiProvider),
    );

class DmdataWebsocketRepository {
  DmdataWebsocketRepository({
    required DmdataApi api,
  }) : _api = api;

  final DmdataApi _api;

  Future<Result<SocketStartResponse, Exception>> startSocketRequest({
    required List<String> classifications,
    List<String>? types,
    String test = 'no',
    DmdataWebsocketFormat format = DmdataWebsocketFormat.raw,
    String? appName,
  }) async =>
      Result.capture(
        () async => _api.v2.socket.startSocket(
          SocketStartRequest(
            classifications: classifications,
            types: types,
            test: test,
            format: format.name,
            appName: appName,
          ),
        ),
      );
}

enum DmdataWebsocketFormat {
  raw,
  json,
  ;
}
