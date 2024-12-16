import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:eqdashboard/core/components/bento/model/bento_config.dart';
import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/core/components/bento/model/bento_saved_state.dart';
import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bento_saver.g.dart';

@Riverpod(keepAlive: true)
class BentoSaver extends _$BentoSaver {
  String prefsKey(String id) => 'bento_saver_$id';

  @override
  BentoSavedState? build(String id) {
    return _loadState();
  }

  /// 保存された状態を読み込む
  BentoSavedState? _loadState() {
    final prefs = ref.read(sharedPreferencesProvider);
    final json = prefs.getString(prefsKey(id));
    if (json == null) {
      return null;
    }

    try {
      final map = jsonDecode(json) as Map<String, dynamic>;
      return BentoSavedState.fromJson(map);
    } on Exception {
      return null;
    }
  }

  /// 現在の状態を保存する
  Future<void> saveState(List<BentoGridItem> items) async {
    final prefs = ref.read(sharedPreferencesProvider);
    final configs = items.map((item) {
      return BentoConfig(
        id: item.id,
        size: item.size,
        order: items.indexOf(item),
      );
    }).toList();

    final savedState = BentoSavedState(configs: configs);
    final json = jsonEncode(savedState.toJson());
    await prefs.setString(prefsKey(id), json);
    state = savedState;
  }

  /// 保存された状態を削除する
  Future<void> clearState() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.remove(prefsKey(id));
    state = null;
  }

  /// 保存された状態からアイテムのリストを復元する
  List<BentoGridItem> restoreItems(List<BentoGridItem> defaultItems) {
    final savedState = state;
    if (savedState == null) {
      return defaultItems;
    }

    // 保存された設定に基づいてアイテムを並び替え・サイズ変更
    final restoredItems = <BentoGridItem>[];
    for (final config in savedState.configs) {
      final item = defaultItems.firstWhereOrNull(
        (item) => item.id == config.id,
      );
      if (item != null) {
        restoredItems.add(item.copyWith(size: config.size));
      }
    }

    // 新しく追加されたアイテムを末尾に追加
    final savedIds = savedState.configs.map((c) => c.id).toSet();
    final newItems = defaultItems.where((item) => !savedIds.contains(item.id));
    restoredItems.addAll(newItems);

    return restoredItems;
  }
}
