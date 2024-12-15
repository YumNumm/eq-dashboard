import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

/// PlatformAppBarで使用する汎用的なアクションアイテム
class PlatformAppBarItem {
  const PlatformAppBarItem({
    required this.onPressed,
    this.icon,
    this.label,
    this.tooltip,
    this.isSelected = false,
  }) : assert(icon != null || label != null, 'icon または label のいずれかが必要です');

  final VoidCallback? onPressed;
  final IconData? icon;
  final String? label;
  final String? tooltip;
  final bool isSelected;

  ToolbarItem buildMacosItem() {
    return ToolBarIconButton(
      label: label ?? '',
      icon: icon != null ? Icon(icon) : const SizedBox.shrink(),
      onPressed: onPressed,
      showLabel: label != null,
      tooltipMessage: tooltip,
    );
  }

  Widget buildCupertinoItem() {
    if (icon != null) {
      return tooltip != null
          ? Tooltip(
              message: tooltip,
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: onPressed,
                child: Icon(icon),
              ),
            )
          : CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              child: Icon(icon),
            );
    }
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(label!),
    );
  }

  Widget buildMaterialItem() {
    if (icon != null) {
      return IconButton(
        icon: Icon(icon),
        onPressed: onPressed,
        tooltip: tooltip,
      );
    }
    return TextButton(
      onPressed: onPressed,
      child: Text(label!),
    );
  }
}

class PlatformAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PlatformAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.backgroundColor,
    this.centerTitle,
  });

  final Widget? title;
  final Widget? leading;
  final List<PlatformAppBarItem>? actions;
  final Color? backgroundColor;
  final bool? centerTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  ToolBar buildMacos(BuildContext context) {
    List<ToolbarItem>? convertActionsToToolBarItems() {
      if (actions == null) {
        return null;
      }
      return actions!.map((item) => item.buildMacosItem()).toList();
    }

    return ToolBar(
      titleWidth: 200,
      title: title ?? const SizedBox.shrink(),
      leading: leading ??
          MacosTooltip(
            message: 'Toggle Sidebar',
            useMousePosition: false,
            child: MacosIconButton(
              icon: MacosIcon(
                CupertinoIcons.sidebar_left,
                color: MacosTheme.brightnessOf(context).resolve(
                  const Color.fromRGBO(0, 0, 0, 0.5),
                  const Color.fromRGBO(255, 255, 255, 0.5),
                ),
                size: 20,
              ),
              boxConstraints: const BoxConstraints(
                minHeight: 20,
                minWidth: 20,
                maxWidth: 48,
                maxHeight: 38,
              ),
              onPressed: () => MacosWindowScope.of(context).toggleSidebar(),
            ),
          ),
      actions: convertActionsToToolBarItems(),
    );
  }

  ObstructingPreferredSizeWidget buildCupertino(BuildContext context) {
    return CupertinoNavigationBar(
      middle: title,
      leading: leading,
      trailing: actions != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children:
                  actions!.map((item) => item.buildCupertinoItem()).toList(),
            )
          : null,
      backgroundColor: backgroundColor,
    );
  }

  Widget buildMaterial(BuildContext context) {
    return AppBar(
      title: title,
      leading: leading,
      actions: actions?.map((item) => item.buildMaterialItem()).toList(),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => buildMacos(context),
      AdaptivePlatformType.cupertino => buildCupertino(context),
      AdaptivePlatformType.material => buildMaterial(context),
    };
  }
}
