import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

class PlatformTheme {
  const PlatformTheme({
    required this.brightness,
    required this.primaryColor,
    this.backgroundColor,
    this.secondaryColor,
    this.errorColor,
  });

  final Brightness brightness;
  final Color primaryColor;
  final Color? backgroundColor;
  final Color? secondaryColor;
  final Color? errorColor;

  static const light = PlatformTheme(
    brightness: Brightness.light,
    primaryColor: Color(0xFF007AFF), // iOS blue
    backgroundColor: Color(0xFFF2F2F2),
    secondaryColor: Color(0xFF5856D6),
    errorColor: Color(0xFFFF3B30),
  );

  static const dark = PlatformTheme(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF0A84FF), // iOS blue dark
    backgroundColor: Color(0xFF1C1C1E),
    secondaryColor: Color(0xFF5E5CE6),
    errorColor: Color(0xFFFF453A),
  );

  MacosThemeData toMacosTheme() {
    return MacosThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      canvasColor: backgroundColor ??
          (brightness == Brightness.light
              ? const Color(0xFFF2F2F2)
              : const Color(0xFF1C1C1E)),
    );
  }

  CupertinoThemeData toCupertinoTheme() {
    return CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
    );
  }

  ThemeData toMaterialTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: brightness,
        background: backgroundColor ??
            (brightness == Brightness.light
                ? const Color(0xFFF2F2F2)
                : const Color(0xFF1C1C1E)),
      ),
    );
  }
}
