import 'package:eqdashboard/core/components/platform/adaptive_list_section.dart';
import 'package:eqdashboard/core/components/platform/platform_radio.dart';
import 'package:eqdashboard/core/models/data_source/data_source_type.dart';
import 'package:eqdashboard/core/provider/data_source_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataSourceSelectionSection extends ConsumerWidget {
  const DataSourceSelectionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDataSource = ref.watch(dataSourceProvider);

    return AdaptiveListSection(
      header: const Text('データソース'),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      footer: const Text(
        'データの取得元を選択します。',
      ),
      children: [
        for (final source in DataSourceType.values)
          PlatformRadio<DataSourceType>(
            value: source,
            groupValue: currentDataSource,
            onChanged: (value) async {
              if (value != null) {
                await ref.read(dataSourceProvider.notifier).set(value);
              }
            },
            title: Text(
              switch (source) {
                DataSourceType.dmdataPolling => 'Project DM-D.S.S(Polling)',
                DataSourceType.dmdataWebSocket => 'Project DM-D.S.S(WebSocket)',
                DataSourceType.none => 'なし',
              },
            ),
            subtitle: Text(
              switch (source) {
                DataSourceType.dmdataPolling => 'HTTP APIを使用して定期的にデータを取得します',
                DataSourceType.dmdataWebSocket =>
                  'WebSocketを使用してリアルタイムにデータを取得します',
                DataSourceType.none => 'データを取得しません',
              },
            ),
          ),
      ],
    );
  }
}
