import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_list_tile.dart';
import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/features/dmdata/websocket/notifier/websocket_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class WebSocketListView extends HookConsumerWidget {
  const WebSocketListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webSocketsAsync = ref.watch(webSocketOpenedListProvider);

    return webSocketsAsync.when(
      data: (result) => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: result.length,
        itemBuilder: (context, index) {
          final websocket = result[index];
          return PlatformListTile(
            title: Text(
              websocket.appName ?? '',
            ),
            trailing: const SizedBox.shrink(),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                _buildInfoRow('ID', websocket.id),
                _buildInfoRow('分類', websocket.classifications.join(', ')),
                _buildInfoRow('IPアドレス', websocket.ipAddress ?? ''),
                _buildInfoRow('サーバ', websocket.server ?? ''),
                _buildInfoRow(
                  '開始日時',
                  DateFormat('yyyy/MM/dd HH:mm:ss').format(websocket.start),
                ),
              ],
            ),
          );
        },
      ),
      loading: () => const Center(
        child: PlatformProgressIndicator(),
      ),
      error: (error, stack) => Center(
        child: PlatformErrorCard.provider(
          error: error,
          provider: webSocketOpenedListProvider,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
