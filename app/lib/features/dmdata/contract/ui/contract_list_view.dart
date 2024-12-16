import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_list_tile.dart';
import 'package:eqdashboard/core/components/platform/platform_progress_indicator.dart';
import 'package:eqdashboard/features/auth/notifier/contract_list_provider.dart';
import 'package:eqdashboard/features/dmdata/contract/model/contract_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContractListView extends HookConsumerWidget {
  const ContractListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contractsAsync = ref.watch(contractListProvider);

    return contractsAsync.when(
      data: (result) => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: result.items.length,
        itemBuilder: (context, index) {
          final contract =
              ContractUiModel.fromContractItem(result.items[index]);
          return PlatformListTile(
            title: Text(
              contract.planName,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow('プランID', contract.planId.toString()),
                _buildInfoRow('分類', contract.classification),
                _buildInfoRow('接続数', '${contract.connectionCounts}接続'),
              ],
            ),
            trailing: _buildContractIsValid(contract.isValid),
          );
        },
      ),
      loading: () => const Center(
        child: PlatformProgressIndicator(),
      ),
      error: (error, stack) => Center(
        child: PlatformErrorCard.provider(
          error: error,
          provider: contractListProvider,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Flexible(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildContractIsValid(bool isValid) {
    return switch (isValid) {
      true => const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.check),
            SizedBox(width: 4),
            Text('有効'),
          ],
        ),
      false => const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.close),
            SizedBox(width: 4),
            Text('無効'),
          ],
        ),
    };
  }
}
