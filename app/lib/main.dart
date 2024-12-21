import 'dart:io';

import 'package:eqdashboard/app.dart';
import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:eqdashboard/core/provider/talker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isMacOS) {
    await _configureMacosWindowUtils();
  }

  final container = ProviderContainer();

  final talker = container.read(talkerProvider);
  container.observers.add(
    TalkerRiverpodObserver(
      talker: talker,
      settings: TalkerRiverpodLoggerSettings(
        printStateFullData: false,
        printProviderDisposed: true,
        providerFilter: (provider) =>
            provider.name != 'ntpTimeTickerProvider' &&
            provider.name != 'eewAliveItemsProvider',
      ),
    ),
  );

  await container.read(sharedPreferencesInternalProvider.future);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const App(),
    ),
  );
}

Future<void> _configureMacosWindowUtils() async {
  const config = MacosWindowUtilsConfig(
    toolbarStyle: NSWindowToolbarStyle.expanded,
  );
  await config.apply();
}
