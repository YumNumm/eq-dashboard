import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class AdaptiveScaffold extends StatelessWidget {
  const AdaptiveScaffold({
    required this.child,
    super.key,
    this.title,
    this.toolBar,
  });

  final Widget child;
  final Widget? title;
  final ToolBar? toolBar;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosScaffold(
          toolBar: toolBar,
          children: [
            ContentArea(
              builder: (context, scrollController) => child,
            ),
          ],
        ),
      AdaptivePlatformType.cupertino => CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: title,
          ),
          child: SafeArea(child: child),
        ),
      AdaptivePlatformType.material => Scaffold(
          appBar: AppBar(
            title: title,
          ),
          body: child,
        ),
    };
  }
}
