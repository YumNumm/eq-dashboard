import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum BentoGridSize {
  small, // 1x1
  medium, // 1x2
  large, // 2x2
}

enum BentoGridMode {
  view,
  edit,
}

class BentoGridItem {
  const BentoGridItem({
    required this.child,
    required this.size,
    required this.id,
  });

  final Widget child;
  final BentoGridSize size;
  final String id;

  // グリッドアイテムの幅を取得
  int getColumnSpan() {
    switch (size) {
      case BentoGridSize.small:
      case BentoGridSize.medium:
        return 1;
      case BentoGridSize.large:
        return 2;
    }
  }

  // グリッドアイテムの高さを取得
  int getRowSpan() {
    switch (size) {
      case BentoGridSize.small:
        return 1;
      case BentoGridSize.medium:
      case BentoGridSize.large:
        return 2;
    }
  }
}

class AdaptiveBentoGridView extends HookWidget {
  const AdaptiveBentoGridView({
    required this.items,
    super.key,
    this.spacing = 8.0,
    this.padding = const EdgeInsets.all(16),
    this.cellSize = 160.0,
    this.mode = BentoGridMode.view,
    this.onItemsReordered,
  });

  final List<BentoGridItem> items;
  final double spacing;
  final EdgeInsets padding;
  final double cellSize;
  final BentoGridMode mode;
  final void Function(List<BentoGridItem>)? onItemsReordered;

  @override
  Widget build(BuildContext context) {
    final currentItems = useState<List<BentoGridItem>>(items);

    useEffect(
      () {
        currentItems.value = items;
        return null;
      },
      [items],
    );

    Widget buildItem(BentoGridItem item) {
      final itemWidget = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: mode == BentoGridMode.edit
              ? Border.all(
                  color: Colors.blueAccent.withValues(alpha: 0.3),
                  width: 2,
                )
              : null,
        ),
        width: item.getColumnSpan() * cellSize +
            (item.getColumnSpan() - 1) * spacing,
        height:
            item.getRowSpan() * cellSize + (item.getRowSpan() - 1) * spacing,
        child: item.child,
      );

      if (mode == BentoGridMode.edit) {
        return Draggable<String>(
          data: item.id,
          feedback: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueAccent.withValues(alpha: 0.3),
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: itemWidget,
            ),
          ),
          childWhenDragging: Opacity(
            opacity: 0.3,
            child: itemWidget,
          ),
          child: DragTarget<String>(
            onWillAcceptWithDetails: (details) => details.data != item.id,
            onAcceptWithDetails: (details) {
              final fromIndex = currentItems.value
                  .indexWhere((item) => item.id == details.data);
              final toIndex =
                  currentItems.value.indexWhere((i) => i.id == item.id);

              final newItems = List<BentoGridItem>.from(currentItems.value);
              final movedItem = newItems.removeAt(fromIndex);
              newItems.insert(toIndex, movedItem);

              currentItems.value = newItems;
              onItemsReordered?.call(newItems);
            },
            builder: (context, candidateData, rejectedData) {
              return itemWidget;
            },
          ),
        );
      }

      return itemWidget;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth - padding.horizontal;
        final maxColumns = (availableWidth / (cellSize + spacing)).floor();
        final itemWidth =
            (availableWidth - (maxColumns - 1) * spacing) / maxColumns;

        return SingleChildScrollView(
          padding: padding,
          child: SizedBox(
            width: availableWidth,
            child: Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                for (final item in currentItems.value) buildItem(item),
              ],
            ),
          ),
        );
      },
    );
  }
}
