import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveListTile extends StatelessWidget {
  const AdaptiveListTile({
    required this.title,
    super.key,
    this.leading,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.platformOverride,
  });

  final Widget title;
  final Widget? leading;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final AdaptivePlatformType? platformOverride;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          onClick: onTap,
        ),
      AdaptivePlatformType.cupertino => CupertinoListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: trailing ?? const CupertinoListTileChevron(),
          onTap: onTap,
        ),
      AdaptivePlatformType.material => ListTile(
          leading: leading,
          title: title,
          subtitle: subtitle,
          trailing: trailing,
          onTap: onTap,
        ),
    };
  }
}
