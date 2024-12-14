import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveButton extends StatelessWidget {
  const AdaptiveButton._({
    required this.onPressed,
    required this.child,
    required _AdaptiveButtonType type,
    super.key,
    this.platformOverride,
  }) : _type = type;

  factory AdaptiveButton.filled({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      AdaptiveButton._(
        key: key,
        onPressed: onPressed,
        type: _AdaptiveButtonType.filled,
        platformOverride: platformOverride,
        child: child,
      );

  factory AdaptiveButton.outlined({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      AdaptiveButton._(
        key: key,
        onPressed: onPressed,
        type: _AdaptiveButtonType.outlined,
        platformOverride: platformOverride,
        child: child,
      );

  factory AdaptiveButton.text({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      AdaptiveButton._(
        key: key,
        onPressed: onPressed,
        type: _AdaptiveButtonType.text,
        platformOverride: platformOverride,
        child: child,
      );

  final VoidCallback? onPressed;
  final Widget child;
  final _AdaptiveButtonType _type;
  final AdaptivePlatformType? platformOverride;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatform.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => _buildMacOSButton(),
      AdaptivePlatformType.cupertino => _buildCupertinoButton(),
      AdaptivePlatformType.material => _buildMaterialButton(),
    };
  }

  Widget _buildMacOSButton() {
    switch (_type) {
      case _AdaptiveButtonType.filled:
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed: onPressed,
          child: child,
        );
      case _AdaptiveButtonType.outlined:
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed: onPressed,
          secondary: true,
          child: child,
        );
      case _AdaptiveButtonType.text:
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed: onPressed,
          secondary: true,
          child: child,
        );
    }
  }

  Widget _buildCupertinoButton() {
    switch (_type) {
      case _AdaptiveButtonType.filled:
        return CupertinoButton.filled(
          onPressed: onPressed,
          child: child,
        );
      case _AdaptiveButtonType.outlined:
        return DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: CupertinoColors.systemBlue,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: CupertinoButton(
            onPressed: onPressed,
            child: child,
          ),
        );
      case _AdaptiveButtonType.text:
        return CupertinoButton(
          onPressed: onPressed,
          child: child,
        );
    }
  }

  Widget _buildMaterialButton() {
    switch (_type) {
      case _AdaptiveButtonType.filled:
        return FilledButton(
          onPressed: onPressed,
          child: child,
        );
      case _AdaptiveButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          child: child,
        );
      case _AdaptiveButtonType.text:
        return TextButton(
          onPressed: onPressed,
          child: child,
        );
    }
  }
}

enum _AdaptiveButtonType {
  filled,
  outlined,
  text,
}
