import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_list_notifier.dart';
import 'package:eqdashboard/features/eew/ui/components/eew_list_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EewListView extends ConsumerWidget {
  const EewListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(eewListNotifierProvider);

    return asyncValue.when(
      data: (state) => _buildListView(state.items, ref),
      loading: () => const Center(
        child: PlatformProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: PlatformErrorCard(
          error: error,
          onRetry: () async => ref.refresh(eewListNotifierProvider),
        ),
      ),
    );
  }

  Widget _buildListView(List<EewListItem> items, WidgetRef ref) {
    if (items.isEmpty) {
      return const Center(
        child: Text('緊急地震速報はありません'),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => ref.refresh(eewListNotifierProvider),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: EewListCard(item: item),
          );
        },
      ),
    );
  }
}
