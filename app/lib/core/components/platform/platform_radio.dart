import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformRadio<T> extends StatelessWidget {
  const PlatformRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
    this.title,
    this.subtitle,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Widget? title;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosListTile(
          title: title ?? const SizedBox.shrink(),
          subtitle: subtitle,
          leading: MacosRadioButton(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
      AdaptivePlatformType.cupertino => CupertinoListTile(
          title: title ?? const SizedBox.shrink(),
          subtitle: subtitle,
          trailing: CupertinoRadio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          onTap: onChanged != null ? () => onChanged!(value) : null,
        ),
      AdaptivePlatformType.material => RadioListTile<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          title: title,
          subtitle: subtitle,
        ),
    };
  }
}

/// CupertinoRadioは標準ではないため、独自に実装
class CupertinoRadio<T> extends StatelessWidget {
  const CupertinoRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
    this.activeColor,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    final effectiveActiveColor =
        activeColor ?? CupertinoTheme.of(context).primaryColor;

    return GestureDetector(
      onTap: onChanged != null ? () => onChanged!(value) : null,
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected
                ? effectiveActiveColor
                : CupertinoColors.systemGrey.resolveFrom(context),
            width: 2,
          ),
        ),
        child: isSelected
            ? Center(
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: effectiveActiveColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
