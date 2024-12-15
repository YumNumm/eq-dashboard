import 'package:eqdashboard/core/components/adaptive/adaptive_app_bar.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_bento_grid_view.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageOne extends HookWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final items = useState<List<BentoGridItem>>([
      const BentoGridItem(
        id: '1',
        size: BentoGridSize.small,
        child: ColoredBox(
          color: Colors.red,
          child: Center(child: Text('1')),
        ),
      ),
      const BentoGridItem(
        id: '2',
        size: BentoGridSize.medium,
        child: ColoredBox(
          color: Colors.blue,
          child: Center(child: Text('2')),
        ),
      ),
      const BentoGridItem(
        id: '3',
        size: BentoGridSize.large,
        child: ColoredBox(
          color: Colors.green,
          child: Center(child: Text('3')),
        ),
      ),
      const BentoGridItem(
        id: '4',
        size: BentoGridSize.xLarge,
        child: ColoredBox(
          color: Colors.indigo,
          child: Center(child: Text('4')),
        ),
      ),
    ]);

    void onItemsReordered(List<BentoGridItem> newItems) {
      items.value = newItems;
    }

    final isEditMode = useState(false);

    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(
        title: const Text('Page One'),
        actions: [
          if (isEditMode.value)
            AdaptiveAppBarItem(
              onPressed: () => isEditMode.value = false,
              icon: Icons.check,
              label: 'Done',
              tooltip: 'Done',
            )
          else
            AdaptiveAppBarItem(
              onPressed: () => isEditMode.value = true,
              icon: Icons.edit,
              label: 'Edit',
              tooltip: 'Edit',
            ),
        ],
      ),
      child: AdaptiveBentoGridView(
        items: items.value,
        mode: isEditMode.value ? BentoGridMode.edit : BentoGridMode.view,
        onItemsReordered: onItemsReordered,
      ),
    );
  }
}
