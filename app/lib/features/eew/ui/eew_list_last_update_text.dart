import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class EewListLastUpdateText extends ConsumerWidget {
  const EewListLastUpdateText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(eewListNotifierProvider);
    final stateOrNull = state.valueOrNull;

    if (stateOrNull == null) {
      return const SizedBox.shrink();
    }

    final lastUpdateAt = stateOrNull.lastUpdateAt;
    final isSupportingRealtimeUpdate = stateOrNull.isSupportingRealtimeUpdate;

    if (lastUpdateAt == null) {
      return const SizedBox.shrink();
    }

    if (isSupportingRealtimeUpdate) {
      return const Row(
        children: [
          Icon(
            Icons.timer,
            color: Colors.black,
          ),
          SizedBox(width: 4),
          Text(
            'WebSocket接続済み',
          ),
        ],
      );
    }

    final formatter = DateFormat('yyyy/MM/dd HH:mm:ss');
    return Row(
      children: [
        Text('最終更新: ${formatter.format(lastUpdateAt)}'),
        if (state.isLoading) ...[
          const SizedBox(width: 4),
          const PlatformProgressIndicator(
            size: 8,
          ),
        ],
      ],
    );
  }
}
