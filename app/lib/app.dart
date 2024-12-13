import 'package:eqdashboard/core/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MacosApp.router(
      routerConfig: router,
      title: 'EQDashboard',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
    );
  }
}
