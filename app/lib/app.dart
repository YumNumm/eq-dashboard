import 'package:eqdashboard/core/components/adaptive/adaptive_app.dart';
import 'package:eqdashboard/core/components/adaptive/adaptive_platform.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final app = AdaptiveApp.router(
      routerConfig: router,
      title: 'EQDashboard',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );

    return AdaptivePlatform(
      platform: AdaptivePlatformType.material,
      child: app,
    );
  }
}
