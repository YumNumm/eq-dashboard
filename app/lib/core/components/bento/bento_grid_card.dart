import 'package:flutter/material.dart';

class BentoGridCard extends StatelessWidget {
  const BentoGridCard({
    required this.header,
    required this.child,
    this.padding = const EdgeInsets.all(12),
    super.key,
  });

  final BentoGridCardHeader header;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          Expanded(
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class BentoGridCardHeader extends StatelessWidget {
  const BentoGridCardHeader({
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.foregroundColor,
    this.padding = const EdgeInsets.all(12),
    super.key,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveForegroundColor =
        foregroundColor ?? theme.colorScheme.onSurfaceVariant;

    return Container(
      color: backgroundColor ?? theme.colorScheme.surfaceContainerHighest,
      padding: padding,
      child: Row(
        children: [
          if (leading != null) ...[
            IconTheme(
              data: IconThemeData(color: effectiveForegroundColor),
              child: leading!,
            ),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTextStyle(
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: effectiveForegroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                  child: title,
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  DefaultTextStyle(
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: effectiveForegroundColor.withValues(alpha: 0.8),
                    ),
                    child: subtitle!,
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: 12),
            IconTheme(
              data: IconThemeData(color: effectiveForegroundColor),
              child: trailing!,
            ),
          ],
        ],
      ),
    );
  }
}
