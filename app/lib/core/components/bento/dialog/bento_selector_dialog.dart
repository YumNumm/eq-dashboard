import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/features/dmdata/websocket/ui/components/dmdata_websocket_connection_bento_card.dart';
import 'package:eqdashboard/features/earthquake/history/ui/earthquake_history_bento_card.dart';
import 'package:eqdashboard/features/eew/ui/eew_alive_bento_card.dart';
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

  static final availableBentos = [
    _BentoOption(
      title: '緊急地震速報の履歴',
      description: '緊急地震速報の履歴を表示します',
      icon: Icons.notifications_active,
      onTap: (context) {
        const item = BentoGridItem(
          id: 'eew_list',
          size: BentoGridSize.medium,
          child: EewListBentoCard(),
        );
        Navigator.of(context).pop(item);
      },
    ),
    _BentoOption(
      title: '直近の緊急地震速報',
      description: '直近の緊急地震速報を表示します',
      icon: Icons.notifications_active,
      onTap: (context) {
        const item = BentoGridItem(
          id: 'eew_alive',
          size: BentoGridSize.medium,
          child: EewAliveBentoCard(),
        );
        Navigator.of(context).pop(item);
      },
    ),
    _BentoOption(
      title: '地震履歴',
      description: '地震履歴を表示します',
      icon: Icons.history,
      onTap: (context) {
        const item = BentoGridItem(
          id: 'earthquake_history',
          size: BentoGridSize.medium,
          child: EarthquakeHistoryBentoCard(),
        );
        Navigator.of(context).pop(item);
      },
    ),
    _BentoOption(
      title: 'DMDATA WebSocket',
      description: 'DMDATA WebSocketを表示します',
      icon: Icons.wifi,
      onTap: (context) {
        const item = BentoGridItem(
          id: 'dmdata_websocket',
          size: BentoGridSize.small,
          child: DmdataWebsocketConnectionBentoCard(),
        );
        Navigator.of(context).pop(item);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('カードを追加'),
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
  final void Function(BuildContext context) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.add_circle_outline),
        onTap: () => onTap(context),
      ),
    );
  }
}
