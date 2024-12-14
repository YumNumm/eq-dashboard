import 'dart:io';

import 'package:flutter/widgets.dart';

enum AdaptivePlatformType {
  material,
  cupertino,
  macos;

  static AdaptivePlatformType defaultPlatform() {
    if (Platform.isMacOS) {
      return AdaptivePlatformType.macos;
    }
    if (Platform.isIOS) {
      return AdaptivePlatformType.cupertino;
    }
    return AdaptivePlatformType.material;
  }
}

class AdaptivePlatform extends InheritedWidget {
  const AdaptivePlatform({
    required this.platform,
    required super.child,
    super.key,
  });

  final AdaptivePlatformType platform;

  static AdaptivePlatformType of(BuildContext context) => maybeOf(context)!;

  static AdaptivePlatformType? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AdaptivePlatform>()?.platform;

  @override
  bool updateShouldNotify(AdaptivePlatform oldWidget) {
    return platform != oldWidget.platform;
  }
}
