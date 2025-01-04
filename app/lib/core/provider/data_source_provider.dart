import 'package:collection/collection.dart';
import 'package:eqdashboard/core/models/data_source/data_source.dart';
import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_provider.g.dart';

@Riverpod(keepAlive: true)
class DataSourceProvider extends _$DataSourceProvider {
  @override
  DataSource build() {
    final savedState = _load();
    if (savedState != null) {
      return savedState;
    }
    return DataSource.none;
  }

  static const _prefsKey = 'data_source';

  Future<void> set(DataSource dataSource) async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_prefsKey, dataSource.name);
  }

  DataSource? _load() {
    final prefs = ref.read(sharedPreferencesProvider);
    final dataSourceName = prefs.getString(_prefsKey);
    return DataSource.values.firstWhereOrNull((e) => e.name == dataSourceName);
  }
}
