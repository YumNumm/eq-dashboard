import 'package:eqdashboard/core/components/bento/bento_grid_card.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_list_notifier.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_last_update_text.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EewListBentoCard extends ConsumerWidget {
  const EewListBentoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BentoGridCard(
      header: BentoGridCardHeader(
        title: const Text('緊急地震速報の履歴'),
        subtitle: const EewListLastUpdateText(),
        trailing: IconButton(
          onPressed: () => ref.invalidate(eewListNotifierProvider),
          icon: const Icon(Icons.refresh),
        ),
      ),
      child: const EewListView(),
    );
  }
}
