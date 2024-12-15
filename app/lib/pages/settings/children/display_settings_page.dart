import 'package:eqdashboard/core/components/platform/adaptive_list_section.dart';
import 'package:eqdashboard/core/components/platform/adaptive_margin.dart';
import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_radio.dart';
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
      child: SafeArea(
        child: AdaptiveMargin(
          child: AdaptiveListSection(
            header: const Text('プラットフォーム'),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            footer: Text(
              '表示するプラットフォームを変更すると、一時的にUIが乱れる場合があります。',
              style: switch (currentPlatform) {
                AdaptivePlatformType.macos => const TextStyle(fontSize: 12),
                AdaptivePlatformType.cupertino => const TextStyle(fontSize: 13),
                AdaptivePlatformType.material => TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
              },
            ),
            children: [
              for (final platform in AdaptivePlatformType.values)
                PlatformRadio<AdaptivePlatformType>(
                  value: platform,
                  groupValue: currentPlatform,
                  onChanged: (value) async {
                    if (value != null) {
                      await ref
                          .read(adaptivePlatformProvider.notifier)
                          .setPlatform(value);
                    }
                  },
                  title: Text(
                    switch (platform) {
                      AdaptivePlatformType.macos => 'macOS',
                      AdaptivePlatformType.cupertino => 'iOS',
                      AdaptivePlatformType.material => 'Material',
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
