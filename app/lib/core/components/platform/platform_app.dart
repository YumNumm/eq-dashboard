import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformApp extends StatelessWidget {
  const PlatformApp.router({
    required this.routerConfig,
    required this.title,
    super.key,
    this.platformOverride,
    this.theme,
    this.darkTheme,
    this.themeMode,
  });

  final GoRouter routerConfig;
  final String title;
  final AdaptivePlatformType? platformOverride;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;

  @override
  Widget build(BuildContext context) {
    final platform = platformOverride ?? AdaptivePlatformScope.of(context);
    final effectiveThemeMode = themeMode ?? ThemeMode.system;
    final brightness = switch (effectiveThemeMode) {
      ThemeMode.light => Brightness.light,
      ThemeMode.dark => Brightness.dark,
      ThemeMode.system => MediaQuery.platformBrightnessOf(context),
    };

    final app = switch (platform) {
      AdaptivePlatformType.macos => MacosApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: MacosThemeData.light(),
          darkTheme: MacosThemeData.dark(),
          themeMode: effectiveThemeMode,
        ),
      AdaptivePlatformType.cupertino => CupertinoApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: CupertinoThemeData(
            brightness: brightness,
            primaryColor: theme?.primaryColor ??
                (brightness == Brightness.light
                    ? CupertinoColors.systemBlue
                    : CupertinoColors.systemBlue.darkColor),
          ),
        ),
      AdaptivePlatformType.material => MaterialApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: theme ?? ThemeData.light(useMaterial3: true),
          darkTheme: darkTheme ?? ThemeData.dark(useMaterial3: true),
          themeMode: effectiveThemeMode,
        ),
    };

    // inject MaterialTheme
    if (platform != AdaptivePlatformType.material) {
      return Theme(
        data: brightness == Brightness.light
            ? ThemeData.light(useMaterial3: true)
            : ThemeData.dark(useMaterial3: true),
        child: app,
      );
    }
    return app;
  }
}