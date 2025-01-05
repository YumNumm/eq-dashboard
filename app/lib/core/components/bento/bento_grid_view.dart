import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_dialog.dart';
import 'package:eqdashboard/core/components/platform/platform_popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

mixin BentoCard {}

enum BentoGridSize {
  small(1, 2), // 1x2
  medium(2, 1), // 2x1
  large(2, 2), // 2x2
  xLarge(2, 3), // 2x3
  xxLarge(2, 4), // 2x4
  xxxLarge(3, 4), // 3x4
  ;

  const BentoGridSize(this.columnSpan, this.rowSpan);

  final int columnSpan;
  final int rowSpan;
}

enum BentoGridMode {
  view,
  edit,
}

class BentoGridScope extends InheritedWidget {
  const BentoGridScope({
    required super.child,
    required this.mode,
    super.key,
  });

  final BentoGridMode mode;

  static BentoGridScope of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<BentoGridScope>()!;

  @override
  bool updateShouldNotify(BentoGridScope oldWidget) => mode != oldWidget.mode;
}

class BentoGridView extends HookWidget {
  const BentoGridView({
    required this.items,
    super.key,
    this.spacing = 2.0,
    this.padding = const EdgeInsets.all(4),
    this.cellSize = 160.0,
    this.mode = BentoGridMode.view,
    this.onItemsReordered,
    this.onItemSizeChanged,
    this.onItemDeleted,
  });

  final List<BentoGridItem> items;
  final double spacing;
  final EdgeInsets padding;
  final double cellSize;
  final BentoGridMode mode;
  final void Function(List<BentoGridItem>)? onItemsReordered;
  final void Function(String id, BentoGridSize newSize)? onItemSizeChanged;
  final void Function(String id)? onItemDeleted;

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

    Widget buildItem(BentoGridItem item, int index) {
      final itemWidget = DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: mode == BentoGridMode.edit
              ? Border.all(
                  color: Colors.blueAccent.withValues(alpha: 0.3),
                  width: 2,
                )
              : null,
        ),
        child: item.child,
      );

      if (mode == BentoGridMode.edit) {
        return Draggable<String>(
          key: Key('item$index'),
          data: item.id,
          dragAnchorStrategy: (draggable, context, position) {
            final renderObject = context.findRenderObject()! as RenderBox;
            final size = renderObject.size;
            return Offset(size.width / 2, size.height / 2);
          },
          feedback: Material(
            elevation: 4,
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: item.size.columnSpan * cellSize +
                  (item.size.columnSpan - 1) * spacing,
              height: item.size.rowSpan * cellSize +
                  (item.size.rowSpan - 1) * spacing,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border.all(
                    color: Colors.blueAccent.withValues(alpha: 0.3),
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: item.child,
              ),
            ),
          ),
          childWhenDragging: Opacity(
            opacity: 0.3,
            child: itemWidget,
          ),
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              DragTarget<String>(
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
              if (onItemSizeChanged != null)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    runAlignment: WrapAlignment.spaceBetween,
                    children: [
                      PlatformPopupMenuButton<BentoGridSize>(
                        icon: const Icon(
                          Icons.aspect_ratio,
                        ),
                        initialValue: item.size,
                        onSelected: (size) {
                          onItemSizeChanged?.call(item.id, size);
                        },
                        itemBuilder: (context) => [
                          for (final size in BentoGridSize.values)
                            PopupMenuItem(
                              value: size,
                              child: Text(
                                '${size.name} '
                                '(${size.columnSpan}x${size.rowSpan})',
                              ),
                            ),
                        ],
                      ),
                      PlatformButton.filled(
                        onPressed: () async {
                          final shouldDelete = await PlatformDialog.show<bool>(
                            context: context,
                            title: const Text('カードの削除'),
                            content: const Text('このカードを削除してもよろしいですか？'),
                            actions: [
                              PlatformDialogAction(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: const Text('キャンセル'),
                              ),
                              PlatformDialogAction(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                isDestructiveAction: true,
                                child: const Text('削除'),
                              ),
                            ],
                          );

                          if (shouldDelete != null && shouldDelete) {
                            onItemDeleted?.call(item.id);
                          }
                        },
                        child: const Text('削除'),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      }

      return itemWidget;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount =
            ((constraints.maxWidth - padding.horizontal) / (cellSize + spacing))
                .floor();
        return SingleChildScrollView(
          padding: padding,
          child: BentoGridScope(
            mode: mode,
            child: StaggeredGrid.count(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: spacing,
              crossAxisSpacing: spacing,
              children: [
                for (var i = 0; i < currentItems.value.length; i++)
                  StaggeredGridTile.count(
                    crossAxisCellCount: currentItems.value[i].size.columnSpan,
                    mainAxisCellCount: currentItems.value[i].size.rowSpan,
                    child: buildItem(currentItems.value[i], i),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
