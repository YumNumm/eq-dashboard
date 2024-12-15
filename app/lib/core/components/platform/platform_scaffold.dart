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
    this.toolBar,
    this.appBar,
  })  : _sliver = false,
        sliverToolBar = null,
        children = null;

  const PlatformScaffold.sliver({
    required this.children,
    super.key,
    this.title,
    this.sliverToolBar,
    this.appBar,
  })  : _sliver = true,
        toolBar = null,
        child = null;

  final Widget? child;
  final List<Widget>? children;
  final Widget? title;
  final ToolBar? toolBar;
  final SliverToolBar? sliverToolBar;
  final PlatformAppBar? appBar;
  final bool _sliver;

  @override
  Widget build(BuildContext context) {
    final platform = AdaptivePlatformScope.of(context);
    if (_sliver) {
      assert(children != null, 'children is required');
      assert(child == null, 'child is not allowed');
    } else {
      assert(children == null, 'children is not allowed');
      assert(child != null, 'child is required');
    }

    return switch (platform) {
      AdaptivePlatformType.macos => MacosScaffold(
          toolBar: _sliver ? null : appBar?.buildMacos(context),
          children: [
            ContentArea(
              builder: (context, scrollController) {
                if (_sliver) {
                  return CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      if (sliverToolBar != null) sliverToolBar!,
                      ...children!,
                    ],
                  );
                } else {
                  return child!;
                }
              },
            ),
          ],
        ),
      AdaptivePlatformType.cupertino => _sliver
          ? CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  middle: title,
                ),
                ...children!,
              ],
            )
          : CupertinoPageScaffold(
              navigationBar: appBar?.buildCupertino(context),
              child: SafeArea(child: child!),
            ),
      AdaptivePlatformType.material => _sliver
          ? CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: title,
                ),
                ...children!,
              ],
            )
          : Scaffold(
              appBar: appBar ?? AppBar(title: title),
              body: child,
            ),
    };
  }
}
