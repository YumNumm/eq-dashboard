import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/material.dart';

class PlatformCard extends StatelessWidget {
  const PlatformCard({
    required this.child,
    super.key,
    this.padding = _kDefaultPadding,
    this.margin = EdgeInsets.zero,
    this.clipBehavior,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Clip? clipBehavior;

  static const _kDefaultRadius = BorderRadius.all(Radius.circular(4));
  static const _kDefaultPadding = EdgeInsets.all(16);

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (platform == AdaptivePlatformType.macos) {
      final outerBorderColor =
          isDark ? const Color(0xFF404347) : const Color(0xFFC1C4C5);

      return Container(
        margin: margin,
        clipBehavior: clipBehavior,
        decoration: BoxDecoration(
          color: isDark
              ? const Color.fromARGB(255, 45, 50, 55)
              : const Color(0xFFE6E9EA),
          border: Border.all(
            color: outerBorderColor,
          ),
          borderRadius: _kDefaultRadius,
        ),
        child: Padding(
          padding: padding ?? _kDefaultPadding,
          child: child,
        ),
      );
    }

    // その他のプラットフォーム用のカードデザイン
    return Card(
      margin: margin,
      child: Padding(
        padding: padding ?? _kDefaultPadding,
        child: child,
      ),
    );
  }
}
