import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'screen_size.g.dart';

enum ScreenSizeType {
  compact,
  medium,
  expanded;

  static ScreenSizeType fromWidth(double width) => switch (width) {
        <= 600 => ScreenSizeType.compact,
        <= 840 => ScreenSizeType.medium,
        _ => ScreenSizeType.expanded,
      };
}

class ScreenSize extends InheritedWidget {
  const ScreenSize({
    required this.screenSize,
    required super.child,
    super.key,
  });

  final ScreenSizeType screenSize;

  static ScreenSizeType of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ScreenSize>()!.screenSize;

  @override
  bool updateShouldNotify(ScreenSize oldWidget) =>
      screenSize != oldWidget.screenSize;
}

@riverpod
class ScreenSizeOverride extends _$ScreenSizeOverride {
  @override
  ScreenSizeType? build() {
    return load();
  }

  static const _prefsKey = 'screenSize_override';

  ScreenSizeType? load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final value = prefs.getString(_prefsKey);
    final type = value != null
        ? ScreenSizeType.values.firstWhere((e) => e.name == value)
        : null;
    return type;
  }

  Future<void> save(ScreenSizeType value) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_prefsKey, value.name);
    state = value;
  }
}
