import 'dart:convert';

import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:eqdashboard/features/earthquake/intensity_icon/model/intensity_color_scheme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'intensity_color_scheme_notifier.g.dart';

@Riverpod(keepAlive: true)
class IntensityColorSchemeNotifier extends _$IntensityColorSchemeNotifier {
  @override
  IntensityColorScheme build() {
    final loaded = load();
    if (loaded == null) {
      return IntensityColorScheme.jma();
    }
    return loaded;
  }

  /// カラースキームを変更する
  void changeColorScheme(IntensityColorScheme scheme) {
    state = scheme;
  }

  static const _prefsKey = 'intensity_color_scheme';

  Future<void> save() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_prefsKey, jsonEncode(state.toJson()));
  }

  IntensityColorScheme? load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final json = prefs.getString(_prefsKey);
    if (json == null) {
      return null;
    }
    final decoded = jsonDecode(json);
    if (decoded is! Map<String, dynamic>) {
      return null;
    }
    return IntensityColorScheme.fromJson(decoded);
  }
}
