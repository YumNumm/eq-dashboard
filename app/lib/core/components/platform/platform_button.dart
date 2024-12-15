import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformButton extends StatelessWidget {
  const PlatformButton._({
    required this.onPressed,
    required this.child,
    required _PlatformButtonType type,
    super.key,
    this.platformOverride,
  }) : _type = type;

  factory PlatformButton.filled({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      PlatformButton._(
        key: key,
        onPressed: onPressed,
        type: _PlatformButtonType.filled,
        platformOverride: platformOverride,
        child: child,
      );

  factory PlatformButton.outlined({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      PlatformButton._(
        key: key,
        onPressed: onPressed,
        type: _PlatformButtonType.outlined,
        platformOverride: platformOverride,
        child: child,
      );

  factory PlatformButton.text({
    required VoidCallback? onPressed,
    required Widget child,
    Key? key,
    AdaptivePlatformType? platformOverride,
  }) =>
      PlatformButton._(
        key: key,
        onPressed: onPressed,
        type: _PlatformButtonType.text,
        platformOverride: platformOverride,
        child: child,
      );

  final VoidCallback? onPressed;
  final Widget child;
  final _PlatformButtonType _type;
  final AdaptivePlatformType? platformOverride;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => _buildMacOSButton(),
      AdaptivePlatformType.cupertino => _buildCupertinoButton(),
      AdaptivePlatformType.material => _buildMaterialButton(),
    };
  }

  Widget _buildMacOSButton() {
    switch (_type) {
      case _PlatformButtonType.filled:
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed: onPressed,
          child: child,
        );
      case _PlatformButtonType.outlined:
        return PushButton(
          controlSize: ControlSize.regular,
          onPressed: onPressed,
          secondary: true,
          child: child,
        );
      case _PlatformButtonType.text:
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
      case _PlatformButtonType.filled:
        return CupertinoButton.filled(
          onPressed: onPressed,
          child: child,
        );
      case _PlatformButtonType.outlined:
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
      case _PlatformButtonType.text:
        return CupertinoButton(
          onPressed: onPressed,
          child: child,
        );
    }
  }

  Widget _buildMaterialButton() {
    switch (_type) {
      case _PlatformButtonType.filled:
        return FilledButton(
          onPressed: onPressed,
          child: child,
        );
      case _PlatformButtonType.outlined:
        return OutlinedButton(
          onPressed: onPressed,
          child: child,
        );
      case _PlatformButtonType.text:
        return TextButton(
          onPressed: onPressed,
          child: child,
        );
    }
  }
}

enum _PlatformButtonType {
  filled,
  outlined,
  text,
}
