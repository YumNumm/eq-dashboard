import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MacosApp(
      title: 'EQDashboard',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
    );
  }
}
