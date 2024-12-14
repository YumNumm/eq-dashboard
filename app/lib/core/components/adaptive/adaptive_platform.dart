import 'dart:io';

import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'adaptive_platform.g.dart';

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

@Riverpod(keepAlive: true)
class AdaptivePlatform extends _$AdaptivePlatform {
  @override
  AdaptivePlatformType build() {
    final platform = _loadPlatform();
    if (platform != null) {
      return platform;
    }
    return AdaptivePlatformType.defaultPlatform();
  }

  static const _key = 'adaptive_platform';

  Future<void> setPlatform(AdaptivePlatformType platform) async {
    state = platform;
    await ref.read(sharedPreferencesProvider).setString(_key, platform.name);
  }

  AdaptivePlatformType? _loadPlatform() {
    final platform = ref.read(sharedPreferencesProvider).getString(_key);
    return platform != null
        ? AdaptivePlatformType.values.byName(platform)
        : null;
  }
}

/// InheritedWidgetを使用してProviderContainerを子ウィジェットに提供
class AdaptivePlatformScope extends InheritedWidget {
  const AdaptivePlatformScope({
    required super.child,
    required this.platform,
    super.key,
  });

  final AdaptivePlatformType platform;

  static AdaptivePlatformType of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<AdaptivePlatformScope>()!
      .platform;

  @override
  bool updateShouldNotify(AdaptivePlatformScope oldWidget) {
    return platform != oldWidget.platform;
  }
}
