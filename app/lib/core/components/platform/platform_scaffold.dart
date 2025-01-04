import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformScaffold extends StatelessWidget {
  const PlatformScaffold({
    required this.child,
    super.key,
    this.title,
    this.appBar,
  });

  final Widget child;
  final Widget? title;
  final PlatformAppBar? appBar;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosScaffold(
          toolBar: appBar?.buildMacos(context),
          children: [
            ContentArea(
              builder: (context, scrollController) {
                return child;
              },
            ),
          ],
        ),
      AdaptivePlatformType.cupertino => CupertinoPageScaffold(
          navigationBar: appBar?.buildCupertino(context),
          child: SafeArea(child: child),
        ),
      AdaptivePlatformType.material => Scaffold(
          appBar: appBar ?? AppBar(title: title),
          body: child,
        ),
    };
  }
}
