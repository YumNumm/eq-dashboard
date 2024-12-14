import 'package:eqdashboard/core/components/adaptive/adaptive_button.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_scaffold.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformSelectorRouteData extends GoRouteData {
  const PlatformSelectorRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PlatformSelectorScreen();
  }
}

class PlatformSelectorScreen extends HookConsumerWidget {
  const PlatformSelectorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPlatform = ref.watch(adaptivePlatformProvider);

    return AdaptiveScaffold(
      title: const Text('プラットフォーム設定'),
      toolBar: const ToolBar(
        title: Text('プラットフォーム設定'),
        enableBlur: true,
        titleWidth: double.infinity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('表示プラットフォーム'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final platform in AdaptivePlatformType.values)
                  AdaptiveButton.filled(
                    onPressed: platform == currentPlatform
                        ? null
                        : () async {
                            await ref
                                .read(adaptivePlatformProvider.notifier)
                                .setPlatform(platform);
                          },
                    child: Text(
                      switch (platform) {
                        AdaptivePlatformType.macos => 'macOS',
                        AdaptivePlatformType.cupertino => 'iOS',
                        AdaptivePlatformType.material => 'Material',
                      },
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
