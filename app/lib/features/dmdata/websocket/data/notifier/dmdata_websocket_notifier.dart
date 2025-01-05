import 'dart:convert';
import 'dart:developer';

import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/talker.dart';
import 'package:eqdashboard/core/util/result.dart';
import 'package:eqdashboard/features/dmdata/auth/notifier/auth_notifier.dart';
import 'package:eqdashboard/features/dmdata/configuration/data/notifier/dmdata_configuration.dart';
import 'package:eqdashboard/features/dmdata/contract/provider/contract_list_provider.dart';
import 'package:eqdashboard/features/dmdata/core/model/telegram_type.dart';
import 'package:eqdashboard/features/dmdata/websocket/data/repository/dmdata_websocket_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket/web_socket.dart';

part 'dmdata_websocket_notifier.g.dart';

/// WebSocketの接続を行います
/// `connect` を呼ぶことで、WebSocketのインスタンスを取得できます
/// throws `WebSocketException`
/// `DmdataWebsocketMessageProvider` を用いることで Ping/Pongを自動でハンドリングします
@riverpod
class DmdataWebsocketNotifier extends _$DmdataWebsocketNotifier {
  @override
  Future<WebSocket?> build() async {
    final autoConnect = ref.watch(
      dmdataConfigurationProvider.select(
        (value) => value.webSocket.autoConnect,
      ),
    );
    if (autoConnect) {
      return _connect();
    }
    return null;
  }

  Future<WebSocket> _connect() async {
    // check if authorized
    final authState = await ref.read(authProvider.future);
    if (authState == null) {
      throw const DmdataWebsocketException(
        type: DmdataWebsocketExceptionType.unauthorized,
      );
    }

    // get current contracts
    final contractsResponse = await ref.read(contractListProvider.future);
    if (contractsResponse.error != null) {
      throw DmdataWebsocketException(
        type: DmdataWebsocketExceptionType.contractListError,
        error: contractsResponse.error,
      );
    }
    final contracts = contractsResponse.items.where((e) => e.isValid).toList();

    // get start response
    final websocketConfiguration = ref.read(
      dmdataConfigurationProvider.select(
        (value) => value.webSocket,
      ),
    );
    final startResponse =
        await ref.read(dmdataWebsocketRepositoryProvider).startSocketRequest(
              classifications: contracts
                  .map((e) => e.classification)
                  .where(
                    (classification) => TelegramType.values
                        .any((type) => type.value == classification),
                  )
                  .toList(),
              appName: websocketConfiguration.appName,
              test: websocketConfiguration.includeTestTelegram.name,
              format: DmdataWebsocketFormat.json,
            );

    final socketStart = switch (startResponse) {
      Failure() => throw DmdataWebsocketException(
          type: DmdataWebsocketExceptionType.startSocketError,
          exception: startResponse.error,
        ),
      Success() => startResponse.value,
    };

    final websocketUri = Uri.parse(socketStart.websocket.url);
    ref.read(talkerLoggerProvider).info('WebSocket接続先: $websocketUri');

    final websocket = await WebSocket.connect(
      websocketUri,
    );

    ref
      ..keepAlive()
      ..onDispose(websocket.close);

    return websocket;
  }

  Future<void> connect() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => _connect());
  }

  Future<void> disconnect() async {
    final ws = state.valueOrNull;
    if (ws != null) {
      await ws.close();
      state = const AsyncValue.data(null);
    }
  }

  Future<void> reconnect() async {
    await disconnect();
    final ws = await _connect();
    state = AsyncValue.data(ws);
  }

  void sendPing({
    required String pingId,
  }) {
    final webSocket = state.valueOrNull;
    if (webSocket == null) {
      throw Exception('WebSocket is not connected');
    }
    final message = WebSocketPingMessage(
      type: 'ping',
      pingId: pingId,
    );
    log('sendPing: $message');
    webSocket.sendText(
      jsonEncode(message.toJson()),
    );
  }

  void sendPong({
    required String pingId,
  }) {
    final webSocket = state.valueOrNull;
    if (webSocket == null) {
      throw Exception('WebSocket is not connected');
    }
    final message = WebSocketPongMessage(
      type: 'pong',
      pingId: pingId,
    );
    webSocket.sendText(
      jsonEncode(message.toJson()),
    );
  }
}

class DmdataWebsocketException implements Exception {
  const DmdataWebsocketException({
    required this.type,
    this.error,
    this.exception,
  });

  final DmdataWebsocketExceptionType type;

  final DmDataError? error;
  final Exception? exception;
}

enum DmdataWebsocketExceptionType {
  unauthorized,
  contractListError,
  startSocketError,
  ;
}
