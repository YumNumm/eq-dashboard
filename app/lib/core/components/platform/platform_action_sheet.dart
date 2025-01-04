import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

Future<T?> showPlatformActionSheet<T>({
  required BuildContext context,
  required List<PlatformActionSheetAction> actions,
  Widget? title,
  Widget? message,
  PlatformActionSheetAction? cancelButton,
}) =>
    PlatformActionSheet.show<T>(
      context: context,
      actions: actions,
      title: title,
      message: message,
      cancelButton: cancelButton,
    );

class PlatformActionSheet extends StatelessWidget {
  const PlatformActionSheet({
    required this.actions,
    super.key,
    this.title,
    this.message,
    this.cancelButton,
  });

  final Widget? title;
  final Widget? message;
  final List<PlatformActionSheetAction> actions;
  final PlatformActionSheetAction? cancelButton;

  static Future<T?> show<T>({
    required BuildContext context,
    required List<PlatformActionSheetAction> actions,
    Widget? title,
    Widget? message,
    PlatformActionSheetAction? cancelButton,
  }) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => showMacosSheet(
          context: context,
          builder: (context) => MacosSheet(
            child: PlatformActionSheet(
              title: title,
              message: message,
              actions: actions,
              cancelButton: cancelButton,
            ),
          ),
        ),
      AdaptivePlatformType.cupertino => showCupertinoModalPopup<T>(
          context: context,
          builder: (context) => CupertinoActionSheet(
            title: title,
            message: message,
            actions: actions,
            cancelButton: cancelButton,
          ),
        ),
      AdaptivePlatformType.material => showModalBottomSheet<T>(
          context: context,
          builder: (context) => PlatformActionSheet(
            title: title,
            message: message,
            actions: actions,
            cancelButton: cancelButton,
          ),
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              DefaultTextStyle(
                style: MacosTheme.of(context).typography.headline,
                child: title!,
              ),
              const SizedBox(height: 8),
            ],
            if (message != null) ...[
              DefaultTextStyle(
                style: MacosTheme.of(context).typography.body,
                child: message!,
              ),
              const SizedBox(height: 16),
            ],
            ...actions,
            if (cancelButton != null) ...[
              const SizedBox(height: 8),
              cancelButton!,
            ],
          ],
        ),
      AdaptivePlatformType.cupertino => CupertinoActionSheet(
          title: title,
          message: message,
          actions: actions,
          cancelButton: cancelButton,
        ),
      AdaptivePlatformType.material => SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null) ...[
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.titleLarge!,
                  child: title!,
                ),
                const SizedBox(height: 8),
              ],
              if (message != null) ...[
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyMedium!,
                  child: message!,
                ),
                const SizedBox(height: 16),
              ],
              ...actions,
              if (cancelButton != null) ...[
                const SizedBox(height: 8),
                cancelButton!,
              ],
            ],
          ),
        ),
    };
  }
}

class PlatformActionSheetAction extends StatelessWidget {
  const PlatformActionSheetAction({
    required this.onPressed,
    required this.child,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final bool isDefaultAction;
  final bool isDestructiveAction;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => PushButton(
          controlSize: ControlSize.large,
          onPressed: onPressed,
          color: isDestructiveAction ? MacosColors.systemRedColor : null,
          secondary: !isDefaultAction,
          child: child,
        ),
      AdaptivePlatformType.cupertino => CupertinoActionSheetAction(
          onPressed: onPressed ?? () {},
          isDefaultAction: isDefaultAction,
          isDestructiveAction: isDestructiveAction,
          child: child,
        ),
      AdaptivePlatformType.material => ListTile(
          onTap: onPressed,
          title: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isDestructiveAction
                      ? Theme.of(context).colorScheme.error
                      : null,
                  fontWeight:
                      isDefaultAction ? FontWeight.bold : FontWeight.normal,
                ),
            child: child,
          ),
        ),
    };
  }
}
