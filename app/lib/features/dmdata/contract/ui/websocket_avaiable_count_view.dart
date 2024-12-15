import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/features/dmdata/contract/provider/websocket_connection_count_status.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebsocketAvailableCountView extends ConsumerWidget {
  const WebsocketAvailableCountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = ref.watch(websocketConnectionCountStatusProvider);

    return switch (status) {
      AsyncData(:final value) => Text(
          '現在接続済みWebSocket数: ${value.availableCount}\n'
          '最大接続数: ${value.totalCount}',
        ),
      AsyncError(:final error) => Center(
          child: PlatformErrorCard.provider(
            error: error,
            provider: websocketConnectionCountStatusProvider,
          ),
        ),
      _ => const Center(child: PlatformProgressIndicator()),
    };
  }
}
