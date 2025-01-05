import 'dart:async';
import 'dart:convert';
import 'dart:developer';

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
    final streamController = StreamController<WebSocketMessage>();

    ref.listen(dmdataWebsocketEventsProvider, (_, next) {
      final event = next.valueOrNull;
      if (event == null) {
        return;
      }
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

    final stream = streamController.stream;
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
    return const DmdataWebsocketMessageModel();
  }

  /// Pingを送信し 応答までの時間を計測する
  Future<Duration> pingAndCalculatePongDuration() async {
    if (state case AsyncData()) {
      final sendPingId = const Uuid().v4();
      final stopwatch = Stopwatch()..start();
      // send ping
      ref
          .read(dmdataWebsocketNotifierProvider.notifier)
          .sendPing(pingId: sendPingId);

      // wait for pong
      final completer = Completer<Duration>();
      ref.listen(dmdataWebsocketMessagesProvider, (_, next) {
        final event = next.valueOrNull;
        log('event: $event');
        if (event == null) {
          return;
        }
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
Stream<WebSocketEvent> dmdataWebsocketEvents(Ref ref) async* {
  final websocket = await ref.watch(dmdataWebsocketNotifierProvider.future);
  if (websocket == null) {
    throw Exception('WebSocket is not connected');
  }
  yield* websocket.events.asBroadcastStream();
}

@riverpod
Stream<WebSocketMessage> dmdataWebsocketMessages(Ref ref) async* {
  final streamController = StreamController<WebSocketMessage>();

  ref.listen(dmdataWebsocketEventsProvider, (_, next) {
    final event = next.valueOrNull;
    if (event == null) {
      return;
    }
    if (event case TextDataReceived(:final text)) {
      final json = jsonDecode(text);
      if (json is Map<String, dynamic>) {
        final message = WebSocketMessage.fromJson(json);
        streamController.add(message);
      }
    }
  });

  ref
    ..keepAlive()
    ..onDispose(streamController.close);

  yield* streamController.stream;
}

enum DmdataWebsocketConnectionStatus {
  waitingForConnection,
  connected,
  disconnected,
  ;
}
