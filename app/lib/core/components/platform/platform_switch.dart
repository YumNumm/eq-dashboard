import 'dart:ui';

import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformSwitch extends StatelessWidget {
  const PlatformSwitch({
    required this.value,
    required this.onChanged,
    super.key,
    this.activeColor,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => () {
          final sRgbColor = activeColor?.withValues(
            colorSpace: ColorSpace.sRGB,
          );
          return MacosSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: activeColor != null
                ? MacosColor.fromRGBO(
                    (sRgbColor!.r * 255).toInt(),
                    (sRgbColor.g * 255).toInt(),
                    (sRgbColor.b * 255).toInt(),
                    1,
                  )
                : null,
          );
        }(),
      AdaptivePlatformType.cupertino => CupertinoSwitch(
          value: value,
          onChanged: onChanged,
          activeTrackColor: activeColor,
        ),
      AdaptivePlatformType.material => Switch(
          value: value,
          onChanged: onChanged,
          activeColor: activeColor,
        ),
    };
  }
}

class PlatformSwitchListTile extends StatelessWidget {
  const PlatformSwitchListTile({
    required this.value,
    required this.onChanged,
    required this.title,
    super.key,
    this.subtitle,
    this.activeColor,
    this.secondary,
  });

  final bool value;
  final ValueChanged<bool>? onChanged;
  final Widget title;
  final Widget? subtitle;
  final Color? activeColor;
  final Widget? secondary;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (secondary != null) ...[
                secondary!,
                const SizedBox(width: 16),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style: MacosTheme.of(context).typography.body,
                      child: title,
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 4),
                      DefaultTextStyle(
                        style: MacosTheme.of(context).typography.subheadline,
                        child: subtitle!,
                      ),
                    ],
                  ],
                ),
              ),
              PlatformSwitch(
                value: value,
                onChanged: onChanged,
                activeColor: activeColor,
              ),
            ],
          ),
        ),
      AdaptivePlatformType.cupertino => CupertinoListTile(
          title: title,
          subtitle: subtitle,
          leading: secondary,
          trailing: PlatformSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: activeColor,
          ),
          onTap: onChanged != null ? () => onChanged!(!value) : null,
        ),
      AdaptivePlatformType.material => SwitchListTile(
          value: value,
          onChanged: onChanged,
          title: title,
          subtitle: subtitle,
          secondary: secondary,
          activeColor: activeColor,
        ),
    };
  }
}
