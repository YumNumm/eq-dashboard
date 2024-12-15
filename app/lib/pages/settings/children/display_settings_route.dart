import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_button.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplaysettingsRoute extends GoRouteData {
  const DisplaysettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: DisplaySettingsRoute(),
    );
  }
}

class DisplaySettingsRoute extends HookConsumerWidget {
  const DisplaySettingsRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPlatform = ref.watch(adaptivePlatformProvider);

    return PlatformScaffold(
      title: const Text('表示設定'),
      appBar: const PlatformAppBar(
        title: Text('表示設定'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('表示プラットフォーム'),
            const SizedBox(height: 16),
            const Text(
              '表示するプラットフォームを変更すると、一時的にUIが乱れる場合があります。',
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final platform in AdaptivePlatformType.values)
                  PlatformButton.filled(
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
