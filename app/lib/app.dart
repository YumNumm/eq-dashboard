import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/components/platform/platform_app.dart';
import 'package:eqdashboard/core/components/platform/screen_size.dart';
import 'package:eqdashboard/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final screenSizeOverride = ref.watch(screenSizeOverrideProvider);

    final app = PlatformApp.router(
      routerConfig: router,
      title: 'EQDashboard',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
    );

    final size = MediaQuery.sizeOf(context);

    return ScreenSize(
      screenSize: screenSizeOverride ?? ScreenSizeType.fromWidth(size.width),
      child: AdaptivePlatformScope(
        platform: ref.watch(adaptivePlatformProvider),
        child: app,
      ),
    );
  }
}
