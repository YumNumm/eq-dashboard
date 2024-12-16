import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveListSection extends StatelessWidget {
  const AdaptiveListSection({
    required this.children,
    super.key,
    this.header,
    this.footer,
    this.margin = EdgeInsets.zero,
    this.backgroundColor = CupertinoColors.systemBackground,
    this.dividerColor,
    this.showDividers = true,
  });

  final List<Widget> children;
  final Widget? header;
  final Widget? footer;
  final EdgeInsetsGeometry margin;
  final Color backgroundColor;
  final Color? dividerColor;
  final bool showDividers;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    switch (platform) {
      case AdaptivePlatformType.cupertino:
        return CupertinoListSection(
          clipBehavior: Clip.antiAlias,
          header: header,
          footer: footer,
          margin: margin,
          backgroundColor: backgroundColor,
          children: children,
        );
      case AdaptivePlatformType.macos:
      case AdaptivePlatformType.material:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (header != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 8,
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 14,
                    color: isDark
                        ? CupertinoColors.systemGrey.darkColor
                        : CupertinoColors.systemGrey.color,
                    fontWeight: FontWeight.bold,
                  ),
                  child: header!,
                ),
              ),
            PlatformCard(
              margin: margin,
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  for (var i = 0; i < children.length; i++) ...[
                    Padding(
                      padding: EdgeInsets.all(
                        platform == AdaptivePlatformType.macos ? 16 : 0,
                      ),
                      child: children[i],
                    ),
                    if (showDividers && i < children.length - 1)
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: dividerColor ??
                            (isDark
                                ? Colors.grey.shade800
                                : Colors.grey.shade200),
                      ),
                  ],
                ],
              ),
            ),
            if (footer != null)
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8,
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 13,
                    color: isDark
                        ? CupertinoColors.systemGrey.darkColor
                        : CupertinoColors.systemGrey.color,
                  ),
                  child: footer!,
                ),
              ),
          ],
        );
    }
  }
}
