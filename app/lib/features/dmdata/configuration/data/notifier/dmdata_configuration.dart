import 'dart:convert';

import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:eqdashboard/features/dmdata/configuration/data/model/dmdata_configuration_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dmdata_configuration.g.dart';

@Riverpod(keepAlive: true)
class DmdataConfiguration extends _$DmdataConfiguration {
  @override
  DmdataConfigurationModel build() {
    final savedState = load();
    if (savedState != null) {
      return savedState;
    }
    return const DmdataConfigurationModel(
      polling: DmdataPollingConfiguration(),
      webSocket: DmdataWebSocketConfiguration(),
    );
  }

  static const _prefsKey = 'dmdataConfiguration';

  Future<void> save(DmdataConfigurationModel config) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(
      _prefsKey,
      jsonEncode(
        config.toJson(),
      ),
    );
    state = config;
  }

  DmdataConfigurationModel? load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final json = prefs.getString(_prefsKey);
    if (json == null) {
      return null;
    }
    return DmdataConfigurationModel.fromJson(
      jsonDecode(json) as Map<String, dynamic>,
    );
  }
}
