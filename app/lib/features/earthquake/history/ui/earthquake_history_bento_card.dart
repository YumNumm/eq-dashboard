import 'package:eqdashboard/core/components/bento/bento_grid_card.dart';
import 'package:eqdashboard/features/earthquake/history/data/notifier/earthquake_history_notifier.dart';
import 'package:eqdashboard/features/earthquake/history/ui/components/earthquake_history_last_update_text.dart';
import 'package:eqdashboard/features/earthquake/history/ui/components/earthquake_history_list_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EarthquakeHistoryBentoCard extends ConsumerWidget {
  const EarthquakeHistoryBentoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BentoGridCard(
      padding: EdgeInsets.zero,
      header: BentoGridCardHeader(
        title: const Text('地震履歴'),
        subtitle: const EarthquakeHistoryLastUpdateText(),
        trailing: IconButton(
          onPressed: () => ref.invalidate(earthquakeHistoryNotifierProvider),
          icon: const Icon(Icons.refresh),
        ),
      ),
      child: const EarthquakeHistoryListView(),
    );
  }
}
