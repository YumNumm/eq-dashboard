import 'package:eqdashboard/core/components/platform/adaptive_margin.dart';
import 'package:eqdashboard/core/components/platform/platform_app_bar.dart';
import 'package:eqdashboard/core/components/platform/platform_scaffold.dart';
import 'package:eqdashboard/core/models/data_source/data_source_type.dart';
import 'package:eqdashboard/core/provider/data_source_provider.dart';
import 'package:eqdashboard/features/dmdata/configuration/ui/components/data_source_selection_section.dart';
import 'package:eqdashboard/features/dmdata/configuration/ui/components/polling_settings_section.dart';
import 'package:eqdashboard/features/dmdata/configuration/ui/components/websocket_settings_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ApiSettingsRoute extends GoRouteData {
  const ApiSettingsRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: ApiSettingsPage(),
    );
  }
}

class ApiSettingsPage extends ConsumerWidget {
  const ApiSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentDataSource = ref.watch(dataSourceProvider);

    return PlatformScaffold(
      appBar: const PlatformAppBar(
        title: Text('API設定'),
      ),
      child: SafeArea(
        child: AdaptiveMargin(
          child: Column(
            children: [
              const DataSourceSelectionSection(),
              switch (currentDataSource) {
                DataSourceType.dmdataPolling => const PollingSettingsSection(),
                DataSourceType.dmdataWebSocket =>
                  const WebSocketSettingsSection(),
                _ => const SizedBox.shrink(),
              },
            ],
          ),
        ),
      ),
    );
  }
}
