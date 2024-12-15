import 'package:eqdashboard/core/components/bento/bento_grid_card.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_alive_items.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EewAliveBentoCard extends HookConsumerWidget {
  const EewAliveBentoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eewItems = ref.watch(eewAliveItemsProvider);

    return BentoGridCard(
      header: const BentoGridCardHeader(
        title: Text('発表中の緊急地震速報'),
      ),
      child: _buildEewList(eewItems, context),
    );
  }

  Widget _buildEewList(List<EewListItem> items, BuildContext context) {
    final theme = Theme.of(context);
    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info,
              size: 48,
              color: theme.colorScheme.onSurface,
            ),
            const SizedBox(height: 8),
            const Text('現在発表中の緊急地震速報はありません'),
          ],
        ),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (item.isCanceled) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(item.text ?? '先ほどの緊急地震速報は取り消されました'),
              ),
            ),
          );
        }
        return EewListCard(item: item);
      },
    );
  }
}
