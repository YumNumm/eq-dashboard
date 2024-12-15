import 'package:eqdashboard/core/components/platform/adaptive_platform.dart';
import 'package:eqdashboard/core/theme/platform_theme.dart';
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
    this.platformTheme,
    this.themeMode,
  });

  final GoRouter routerConfig;
  final String title;
  final AdaptivePlatformType? platformOverride;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final PlatformTheme? platformTheme;
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

    final effectivePlatformTheme = platformTheme ??
        (brightness == Brightness.light
            ? PlatformTheme.light
            : PlatformTheme.dark);

    return switch (platform) {
      AdaptivePlatformType.macos => MacosApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: effectivePlatformTheme.toMacosTheme(),
          darkTheme: PlatformTheme.dark.toMacosTheme(),
          themeMode: effectiveThemeMode,
        ),
      AdaptivePlatformType.cupertino => CupertinoApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: effectivePlatformTheme.toCupertinoTheme(),
        ),
      AdaptivePlatformType.material => MaterialApp.router(
          routerConfig: routerConfig,
          title: title,
          theme: theme ?? effectivePlatformTheme.toMaterialTheme(),
          darkTheme: darkTheme ?? PlatformTheme.dark.toMaterialTheme(),
          themeMode: effectiveThemeMode,
        ),
    };
  }
}
