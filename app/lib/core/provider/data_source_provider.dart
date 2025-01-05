import 'package:collection/collection.dart';
import 'package:eqdashboard/core/models/data_source/data_source_type.dart';
import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_provider.g.dart';

@Riverpod(keepAlive: true)
class DataSource extends _$DataSource {
  @override
  DataSourceType build() {
    final savedState = _load();
    if (savedState != null) {
      return savedState;
    }
    return DataSourceType.none;
  }

  static const _prefsKey = 'data_source';

  Future<void> set(DataSourceType dataSource) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_prefsKey, dataSource.name);
    state = dataSource;
  }

  DataSourceType? _load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final dataSourceName = prefs.getString(_prefsKey);
    return DataSourceType.values
        .firstWhereOrNull((e) => e.name == dataSourceName);
  }
}
