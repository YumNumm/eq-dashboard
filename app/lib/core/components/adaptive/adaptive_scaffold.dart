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
  })  : _sliver = false,
        sliverToolBar = null,
        children = null;

  const AdaptiveScaffold.sliver({
    required this.children,
    super.key,
    this.title,
    this.sliverToolBar,
  })  : _sliver = true,
        toolBar = null,
        child = null;

  final Widget? child;
  final List<Widget>? children;
  final Widget? title;
  final ToolBar? toolBar;
  final SliverToolBar? sliverToolBar;
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
          toolBar: _sliver ? null : toolBar,
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
              navigationBar: CupertinoNavigationBar(
                middle: title,
              ),
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
              appBar: AppBar(
                title: title,
              ),
              body: child,
            ),
    };
  }
}
