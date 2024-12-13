import 'dart:io';

import 'package:eqdashboard/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    await Window.initialize();
    await Window.setEffect(effect: WindowEffect.acrylic);
    await Window.makeTitlebarTransparent();
    await Window.enableFullSizeContentView();
  }

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
