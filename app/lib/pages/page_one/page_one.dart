import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_bento_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageOne extends HookWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final items = useState<List<BentoGridItem>>([
      const BentoGridItem(
        id: '1',
        size: BentoGridSize.xLarge,
        child: EewListBentoCard(),
      ),
    ]);

    void onItemsReordered(List<BentoGridItem> newItems) {
      items.value = newItems;
    }

    final isEditMode = useState(false);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Page One'),
        actions: [
          if (isEditMode.value)
            PlatformAppBarItem(
              onPressed: () => isEditMode.value = false,
              icon: Icons.check,
              label: 'Done',
              tooltip: 'Done',
            )
          else
            PlatformAppBarItem(
              onPressed: () => isEditMode.value = true,
              icon: Icons.edit,
              label: 'Edit',
              tooltip: 'Edit',
            ),
        ],
      ),
      child: BentoGridView(
        items: items.value,
        mode: isEditMode.value ? BentoGridMode.edit : BentoGridMode.view,
        onItemsReordered: onItemsReordered,
      ),
    );
  }
}
