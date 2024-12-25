import 'package:eqdashboard/features/earthquake/history/data/notifier/earthquake_history_notifier.dart';
import 'package:eqdashboard/features/earthquake/history/ui/components/earthquake_history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EarthquakeHistoryListView extends ConsumerWidget {
  const EarthquakeHistoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(earthquakeHistoryNotifierProvider);
    return state.when(
      data: (data) {
        if (data.items.isEmpty) {
          return const Center(
            child: Text('データがありません'),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: data.items.length,
          itemBuilder: (context, index) {
            final item = data.items[index];
            return EarthquakeHistoryListTile(item: item);
          },
        );
      },
      error: (error, stackTrace) => const Center(
        child: Text('エラーが発生しました'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
