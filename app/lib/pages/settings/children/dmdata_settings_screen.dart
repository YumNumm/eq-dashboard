import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_error_card.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:eqdashboard/features/dmdata/auth/notifier/auth_notifier.dart';
import 'package:eqdashboard/pages/settings/children/dmdata_settings_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class DmdataSettingsRouteData extends GoRouteData {
  const DmdataSettingsRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const DmdataSettingsScreen(),
    );
  }
}

class DmdataSettingsScreen extends ConsumerWidget {
  const DmdataSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return PlatformScaffold(
      title: const Text('Project DM-D.S.S 設定'),
      appBar: const PlatformAppBar(
        title: Text('Project DM-D.S.S 設定'),
      ),
      child: authState.when(
        data: (state) => const DmdataSettingsContent(),
        loading: () => const Center(
          child: ProgressCircle(),
        ),
        error: (error, stack) => PlatformErrorCard.provider(
          error: error,
          provider: authProvider,
        ),
      ),
    );
  }
}
