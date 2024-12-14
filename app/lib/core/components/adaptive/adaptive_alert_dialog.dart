import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:eqdashboard/core/components/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveAlertDialog extends StatelessWidget {
  const AdaptiveAlertDialog({
    required this.title,
    required this.message,
    super.key,
    this.icon,
    this.primaryButtonText = 'OK',
    this.onPrimaryButtonPressed,
    this.secondaryButtonText,
    this.onSecondaryButtonPressed,
  });

  final Widget? icon;
  final String title;
  final Widget message;
  final String primaryButtonText;
  final VoidCallback? onPrimaryButtonPressed;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryButtonPressed;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosAlertDialog(
          appIcon: icon ??
              const AppIcon(
                size: 64,
              ),
          title: Text(title),
          message: message,
          primaryButton: PushButton(
            controlSize: ControlSize.large,
            onPressed: onPrimaryButtonPressed ?? () => Navigator.pop(context),
            child: Text(primaryButtonText),
          ),
          secondaryButton: secondaryButtonText != null
              ? PushButton(
                  controlSize: ControlSize.large,
                  secondary: true,
                  onPressed: onSecondaryButtonPressed,
                  child: Text(secondaryButtonText!),
                )
              : null,
        ),
      AdaptivePlatformType.cupertino => CupertinoAlertDialog(
          title: Text(title),
          content: message,
          actions: [
            if (secondaryButtonText != null)
              CupertinoDialogAction(
                onPressed: onSecondaryButtonPressed,
                child: Text(secondaryButtonText!),
              ),
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: onPrimaryButtonPressed ?? () => Navigator.pop(context),
              child: Text(primaryButtonText),
            ),
          ],
        ),
      AdaptivePlatformType.material => AlertDialog(
          icon: icon,
          title: Text(title),
          content: message,
          actions: [
            if (secondaryButtonText != null)
              TextButton(
                onPressed: onSecondaryButtonPressed,
                child: Text(secondaryButtonText!),
              ),
            TextButton(
              onPressed: onPrimaryButtonPressed ?? () => Navigator.pop(context),
              child: Text(primaryButtonText),
            ),
          ],
        ),
    };
  }
}

/// 汎用アラートダイアログを表示するためのユーティリティ関数
Future<T?> showAdaptiveAlertDialog<T>({
  required BuildContext context,
  required String title,
  required Widget message,
  Widget? icon,
  String primaryButtonText = 'OK',
  VoidCallback? onPrimaryButtonPressed,
  String? secondaryButtonText,
  VoidCallback? onSecondaryButtonPressed,
}) {
  final platform = AdaptivePlatformScope.of(context);

  return switch (platform) {
    AdaptivePlatformType.macos => showMacosAlertDialog(
        context: context,
        builder: (context) => AdaptiveAlertDialog(
          title: title,
          message: message,
          icon: icon,
          primaryButtonText: primaryButtonText,
          onPrimaryButtonPressed: onPrimaryButtonPressed,
          secondaryButtonText: secondaryButtonText,
          onSecondaryButtonPressed: onSecondaryButtonPressed,
        ),
      ),
    AdaptivePlatformType.cupertino => showCupertinoDialog(
        context: context,
        builder: (context) => AdaptiveAlertDialog(
          title: title,
          message: message,
          icon: icon,
          primaryButtonText: primaryButtonText,
          onPrimaryButtonPressed: onPrimaryButtonPressed,
          secondaryButtonText: secondaryButtonText,
          onSecondaryButtonPressed: onSecondaryButtonPressed,
        ),
      ),
    AdaptivePlatformType.material => showDialog(
        context: context,
        builder: (context) => AdaptiveAlertDialog(
          title: title,
          message: message,
          icon: icon,
          primaryButtonText: primaryButtonText,
          onPrimaryButtonPressed: onPrimaryButtonPressed,
          secondaryButtonText: secondaryButtonText,
          onSecondaryButtonPressed: onSecondaryButtonPressed,
        ),
      ),
  };
}
