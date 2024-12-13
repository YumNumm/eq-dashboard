import 'dart:io';

import 'package:eqdashboard/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:macos_ui/macos_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isMacOS) {
    await _configureMacosWindowUtils();
  }

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

Future<void> _configureMacosWindowUtils() async {
  const config = MacosWindowUtilsConfig(
    toolbarStyle: NSWindowToolbarStyle.expanded,
  );
  await config.apply();
}
