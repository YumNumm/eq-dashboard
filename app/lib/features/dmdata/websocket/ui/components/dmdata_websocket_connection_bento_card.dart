import 'package:eqdashboard/core/components/bento/bento_grid_card.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/core/gen/fonts.gen.dart';
import 'package:eqdashboard/features/dmdata/websocket/data/notifier/dmdata_websocket_message_provider.dart';
import 'package:eqdashboard/features/dmdata/websocket/data/notifier/dmdata_websocket_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:web_socket/web_socket.dart';

class DmdataWebsocketConnectionBentoCard extends ConsumerWidget {
  const DmdataWebsocketConnectionBentoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BentoGridCard(
      header: BentoGridCardHeader(
        title: const Text('WebSocket接続状態'),
        leading: const Icon(Icons.private_connectivity),
        trailing: Row(
          children: [
            // Ping button
            IconButton(
              tooltip: 'Pingを送信してPongの応答時間を計測します',
              onPressed: () async => ref
                  .read(dmdataWebsocketMessageProviderProvider.notifier)
                  .pingAndCalculatePongDuration(),
              icon: const Icon(Icons.network_check),
            ),
            IconButton(
              tooltip: 'WebSocketを再接続します',
              onPressed: () async =>
                  ref.refresh(dmdataWebsocketNotifierProvider),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
      child: const FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.topCenter,
        child: DmdataWebsocketConnectionStatus(),
      ),
    );
  }
}

class DmdataWebsocketConnectionStatus extends ConsumerWidget {
  const DmdataWebsocketConnectionStatus({super.key});

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy/MM/dd HH:mm:ss').format(dateTime.toLocal());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final websocketState = ref.watch(dmdataWebsocketNotifierProvider);
    final messageState = ref.watch(dmdataWebsocketMessageProviderProvider);

    return websocketState.when(
      skipLoadingOnRefresh: false,
      skipLoadingOnReload: false,
      data: (websocket) {
        if (websocket == null) {
          return PlatformErrorCard(
            error: 'WebSocketに接続されていません',
            onRetry: () async =>
                ref.refresh(dmdataWebsocketNotifierProvider.notifier),
          );
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RawChip(
              selected: true,
              showCheckmark: true,
              color: WidgetStatePropertyAll(colorScheme.secondaryContainer),
              label: Text(
                'WebSocket接続中',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 8),
            messageState.when(
              data: (message) {
                final textTheme =
                    Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontFamily: FontFamily.jetBrainsMono,
                  fontFamilyFallback: [FontFamily.jetBrainsMono],
                );
                final lastPingAt = message.lastPingAt;
                final lastPongAt = message.lastPongAt;
                final lastPingDuration = message.lastPingDuration;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (lastPingAt != null) ...[
                      Text(
                        '最終Ping: ${_formatDateTime(lastPingAt)}',
                        style: textTheme,
                      ),
                    ],
                    if (lastPongAt != null) ...[
                      Text(
                        '最終Pong: ${_formatDateTime(lastPongAt)}',
                        style: textTheme,
                      ),
                    ],
                    if (lastPingDuration != null) ...[
                      Text(
                        'Ping値: ${lastPingDuration.inMilliseconds}ms',
                        style: textTheme,
                      ),
                    ],
                  ],
                );
              },
              error: (error, stackTrace) => const SizedBox(),
              loading: () => const SizedBox(),
            ),
          ],
        );
      },
      error: (error, stackTrace) {
        return PlatformErrorCard(
          error: switch (error) {
            DmdataWebsocketException() when error.exception != null =>
              error.exception!,
            WebSocketException() => error.message,
            _ => error,
          },
          onRetry: () async =>
              ref.refresh(dmdataWebsocketNotifierProvider.notifier),
        );
      },
      loading: () => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const PlatformProgressIndicator(),
            const SizedBox(height: 8),
            const Text('WebSocket接続中...'),
            PlatformButton.outlined(
              onPressed: () async =>
                  ref.refresh(dmdataWebsocketNotifierProvider.notifier),
              child: const Text('再接続'),
            ),
          ],
        ),
      ),
    );
  }
}
