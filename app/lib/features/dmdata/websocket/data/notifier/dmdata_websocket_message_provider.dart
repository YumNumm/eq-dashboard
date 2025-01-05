import 'dart:async';
import 'dart:convert';

import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/features/dmdata/websocket/data/model/dmdata_websocket_message_model.dart';
import 'package:eqdashboard/features/dmdata/websocket/data/notifier/dmdata_websocket_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:web_socket/web_socket.dart';

part 'dmdata_websocket_message_provider.g.dart';

@riverpod
class DmdataWebsocketMessageProvider extends _$DmdataWebsocketMessageProvider {
  @override
  Future<DmdataWebsocketMessageModel> build() async {
    final events = await ref.watch(_dmdataWebsocketEventsProvider.future);
    final streamController = StreamController<WebSocketMessage>();

    events.listen((event) {
      switch (event) {
        case TextDataReceived():
          {
            final json = jsonDecode(event.text);
            if (json is Map<String, dynamic>) {
              final message = WebSocketMessage.fromJson(json);
              streamController.add(message);
            } else {
              streamController.addError(
                Exception('Invalid JSON received: ${event.text}'),
              );
            }
          }
        case BinaryDataReceived():
          {
            streamController.addError(
              Exception('Binary data received: ${event.data}'),
            );
          }
        case CloseReceived():
          {
            streamController.addError(
              Exception('Connection closed: ${event.code}'),
            );
          }
      }
    });

    ref
      ..keepAlive()
      ..onDispose(streamController.close);

    final stream = streamController.stream.asBroadcastStream();
    stream.listen(
      (event) {
        // handle ping
        if (event case WebSocketPingMessage(:final pingId)) {
          ref
              .read(dmdataWebsocketNotifierProvider.notifier)
              .sendPong(pingId: pingId);
          final currentState = state.valueOrNull;
          if (currentState != null) {
            state = AsyncData(
              currentState.copyWith(
                lastPingId: pingId,
                lastPongAt: DateTime.now(),
              ),
            );
          }
        }
      },
    );
    return DmdataWebsocketMessageModel(
      stream: stream,
    );
  }

  /// Pingを送信し 応答までの時間を計測する
  Future<Duration> pingAndCalculatePongDuration() async {
    if (state case AsyncData(:final value)) {
      final sendPingId = const Uuid().v4();
      final stopwatch = Stopwatch()..start();
      // send ping
      ref
          .read(dmdataWebsocketNotifierProvider.notifier)
          .sendPing(pingId: sendPingId);

      // wait for pong
      final completer = Completer<Duration>();
      value.stream.listen((event) {
        if (event case WebSocketPongMessage(pingId: final recievedPingId)
            when sendPingId == recievedPingId) {
          completer.complete(stopwatch.elapsed);
        }
      });
      final duration = await completer.future;
      final currentState = state.valueOrNull;
      if (currentState != null) {
        state = AsyncData(
          currentState.copyWith(
            lastPingAt: DateTime.now(),
            lastPingDuration: duration,
          ),
        );
      }
      return duration;
    } else {
      throw Exception('WebSocket is not connected');
    }
  }
}

@riverpod
Future<Stream<WebSocketEvent>> _dmdataWebsocketEvents(Ref ref) async {
  final websocket = await ref.watch(dmdataWebsocketNotifierProvider.future);
  if (websocket == null) {
    throw Exception('WebSocket is not connected');
  }
  return websocket.events.asBroadcastStream();
}

enum DmdataWebsocketConnectionStatus {
  waitingForConnection,
  connected,
  disconnected,
  ;
}
