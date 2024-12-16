import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/features/eew/ui/eew_alive/eew_alive_bento_card.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_bento_card.dart';
import 'package:flutter/material.dart';

class BentoSelectorDialog extends StatelessWidget {
  const BentoSelectorDialog({super.key});

  static Future<BentoGridItem?> show(BuildContext context) {
    return showDialog<BentoGridItem>(
      context: context,
      builder: (context) => const BentoSelectorDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final availableBentos = [
      _BentoOption(
        title: 'EEW リスト',
        description: '緊急地震速報のリストを表示します',
        icon: Icons.notifications_active,
        onTap: () {
          final item = BentoGridItem(
            id: 'eew_list_${DateTime.now().millisecondsSinceEpoch}',
            size: BentoGridSize.medium,
            child: const EewListBentoCard(),
          );
          Navigator.of(context).pop(item);
        },
      ),
      _BentoOption(
        title: 'EEW 死活監視',
        description: 'EEWシステムの状態を監視します',
        icon: Icons.monitor_heart,
        onTap: () {
          final item = BentoGridItem(
            id: 'eew_alive_${DateTime.now().millisecondsSinceEpoch}',
            size: BentoGridSize.medium,
            child: const EewAliveBentoCard(),
          );
          Navigator.of(context).pop(item);
        },
      ),
    ];

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('弁当を追加'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: availableBentos.length,
          itemBuilder: (context, index) => availableBentos[index],
        ),
      ),
    );
  }
}

class _BentoOption extends StatelessWidget {
  const _BentoOption({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.add_circle_outline),
        onTap: onTap,
      ),
    );
  }
}
