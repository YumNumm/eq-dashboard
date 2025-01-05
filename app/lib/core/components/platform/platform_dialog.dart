import 'dart:io';

import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformDialog extends StatelessWidget {
  const PlatformDialog({
    required this.title,
    required this.content,
    required this.actions,
    super.key,
  });

  final Widget title;
  final Widget content;
  final List<PlatformDialogAction> actions;

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget title,
    required Widget content,
    required List<PlatformDialogAction> actions,
  }) {
    if (!kIsWeb && Platform.isMacOS) {
      return showMacosAlertDialog<T>(
        context: context,
        builder: (context) => PlatformDialog(
          title: title,
          content: content,
          actions: actions,
        ),
      );
    }
    if (!kIsWeb && Platform.isIOS) {
      return showCupertinoDialog<T>(
        context: context,
        builder: (context) => PlatformDialog(
          title: title,
          content: content,
          actions: actions,
        ),
      );
    }
    return showDialog<T>(
      barrierDismissible: false,
      context: context,
      builder: (context) => PlatformDialog(
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    if (platform == AdaptivePlatformType.macos) {
      assert(actions.isNotEmpty, 'actions must not be empty');
      assert(actions.length == 2, 'actions must be 2');
      final primaryAction = actions.last;
      final secondaryAction = actions.first;

      return MacosAlertDialog(
        appIcon: const FlutterLogo(size: 56),
        title: title,
        message: content,
        primaryButton: primaryAction.macOsAction(context),
        secondaryButton: secondaryAction.macOsAction(context),
      );
    }
    if (platform == AdaptivePlatformType.cupertino) {
      return CupertinoAlertDialog(
        title: title,
        content: content,
        actions: actions,
      );
    }
    return AlertDialog(
      title: title,
      content: content,
      actions: actions,
    );
  }
}

class PlatformDialogAction extends StatelessWidget {
  const PlatformDialogAction({
    required this.onPressed,
    required this.child,
    this.isDestructiveAction = false,
    this.isDefaultAction = false,
    super.key,
  });

  final void Function(BuildContext context) onPressed;
  final Widget child;
  final bool isDestructiveAction;
  final bool isDefaultAction;

  PushButton macOsAction(BuildContext context) => PushButton(
        controlSize: ControlSize.large,
        onPressed: () => onPressed(context),
        color: isDestructiveAction ? MacosColors.systemRedColor : null,
        secondary: !isDefaultAction,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    if (platform == AdaptivePlatformType.macos) {
      return macOsAction(context);
    }
    if (platform == AdaptivePlatformType.cupertino) {
      return CupertinoDialogAction(
        onPressed: () => onPressed(context),
        isDestructiveAction: isDestructiveAction,
        isDefaultAction: isDefaultAction,
        child: child,
      );
    }
    return TextButton(
      onPressed: () => onPressed(context),
      style: isDestructiveAction
          ? TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            )
          : null,
      child: child,
    );
  }
}
