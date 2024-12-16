import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformPopupMenuButton<T> extends StatelessWidget {
  const PlatformPopupMenuButton({
    required this.itemBuilder,
    required this.onSelected,
    this.initialValue,
    this.icon,
    super.key,
  });

  final List<PopupMenuEntry<T>> Function(BuildContext context) itemBuilder;
  final void Function(T value) onSelected;
  final T? initialValue;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosPopupButton<T>(
          items: itemBuilder(context)
              .whereType<PopupMenuItem<T>>()
              .map(
                (item) => MacosPopupMenuItem<T>(
                  value: item.value,
                  child: item.child ?? const SizedBox.shrink(),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value != null) {
              onSelected(value);
            }
          },
          value: initialValue,
        ),
      AdaptivePlatformType.cupertino => CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            final value = await showCupertinoModalPopup<T>(
              context: context,
              builder: (context) => CupertinoActionSheet(
                actions: itemBuilder(context)
                    .map((item) => _buildCupertinoAction(context, item))
                    .whereType<CupertinoActionSheetAction>()
                    .toList(),
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('キャンセル'),
                ),
              ),
            );
            if (value != null) {
              onSelected(value);
            }
          },
          child: icon ?? const Icon(CupertinoIcons.ellipsis),
        ),
      AdaptivePlatformType.material => PopupMenuButton<T>(
          itemBuilder: itemBuilder,
          onSelected: onSelected,
          initialValue: initialValue,
          icon: icon,
        ),
    };
  }

  Widget? _buildCupertinoAction(
    BuildContext context,
    PopupMenuEntry<T> item,
  ) {
    if (item is PopupMenuItem<T>) {
      return CupertinoActionSheetAction(
        onPressed: () => Navigator.pop(context, item.value),
        isDefaultAction: item.value == initialValue,
        child: item.child ?? const SizedBox.shrink(),
      );
    }
    return null;
  }
}
