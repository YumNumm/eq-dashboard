import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:eqdashboard/core/components/bento/dialog/bento_selector_dialog.dart';
import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/core/components/bento/notifier/bento_saver.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:eqdashboard/features/eew/ui/eew_alive_bento_card.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_bento_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageOne extends HookConsumerWidget {
  const PageOne({super.key});

  static const _bentoSaverId = 'page_one';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedState = ref.watch(bentoSaverProvider(_bentoSaverId));
    final defaultItems = [
      const BentoGridItem(
        id: '1',
        size: BentoGridSize.xLarge,
        child: EewListBentoCard(),
      ),
      const BentoGridItem(
        id: '2',
        size: BentoGridSize.xLarge,
        child: EewAliveBentoCard(),
      ),
    ];

    final items = useState<List<BentoGridItem>>(
      savedState != null
          ? ref
              .read(bentoSaverProvider(_bentoSaverId).notifier)
              .restoreItems(defaultItems)
          : defaultItems,
    );

    Future<void> onItemsReordered(List<BentoGridItem> newItems) async {
      items.value = newItems;
      await ref
          .read(bentoSaverProvider(_bentoSaverId).notifier)
          .saveState(newItems);
    }

    Future<void> onItemSizeChanged(String id, BentoGridSize newSize) async {
      final newItems = [...items.value];
      final index = newItems.indexWhere((item) => item.id == id);
      if (index != -1) {
        newItems[index] = BentoGridItem(
          id: id,
          size: newSize,
          child: newItems[index].child,
        );
        items.value = newItems;
        await ref
            .read(bentoSaverProvider(_bentoSaverId).notifier)
            .saveState(newItems);
      }
    }

    Future<void> onItemDeleted(String id) async {
      final newItems = [...items.value];
      newItems.removeWhere((item) => item.id == id);
      items.value = newItems;
      await ref
          .read(bentoSaverProvider(_bentoSaverId).notifier)
          .saveState(newItems);
    }

    Future<void> addNewBentoItem() async {
      final newItem = await BentoSelectorDialog.show(context);
      if (newItem == null) {
        return;
      }

      final newItems = [...items.value, newItem];
      items.value = newItems;
      await ref
          .read(bentoSaverProvider(_bentoSaverId).notifier)
          .saveState(newItems);
    }

    final isEditMode = useState(false);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Page One'),
        actions: [
          PlatformAppBarItem(
            onPressed: addNewBentoItem,
            icon: Icons.add,
            label: 'Add',
            tooltip: 'Add',
          ),
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
        onItemSizeChanged: onItemSizeChanged,
        onItemDeleted: onItemDeleted,
      ),
    );
  }
}
