import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:eqdashboard/core/components/bento/bento_grid_view.dart';
import 'package:eqdashboard/core/components/bento/model/bento_config.dart';
import 'package:eqdashboard/core/components/bento/model/bento_grid_item.dart';
import 'package:eqdashboard/core/components/bento/model/bento_saved_state.dart';
import 'package:eqdashboard/core/provider/shared_preferences.dart';
import 'package:eqdashboard/features/dmdata/websocket/ui/components/dmdata_websocket_connection_bento_card.dart';
import 'package:eqdashboard/features/earthquake/history/ui/earthquake_history_bento_card.dart';
import 'package:eqdashboard/features/eew/ui/eew_alive_bento_card.dart';
import 'package:eqdashboard/features/eew/ui/eew_list_bento_card.dart';
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

  /// 保存された状態からアイテムのリストを復元する
  List<BentoGridItem> restoreItems(
    List<BentoGridItem> bentoItems,
    List<BentoGridItem> defaultItems,
  ) {
    final savedState = state;
    if (savedState == null) {
      return defaultItems;
    }

    // 保存された設定に基づいてアイテムを並び替え・サイズ変更
    final restoredItems = <BentoGridItem>[];
    for (final config in savedState.configs) {
      log('config: ${config.id}');
      final item = availableItems.firstWhereOrNull(
        (item) => item.id == config.id,
      );
      if (item != null) {
        restoredItems.add(item.copyWith(size: config.size));
      }
    }
    return restoredItems;
  }

  static List<BentoGridItem> get availableItems => [
        const BentoGridItem(
          id: 'eew_list',
          size: BentoGridSize.medium,
          child: EewListBentoCard(),
        ),
        const BentoGridItem(
          id: 'eew_alive',
          size: BentoGridSize.medium,
          child: EewAliveBentoCard(),
        ),
        const BentoGridItem(
          id: 'earthquake_history',
          size: BentoGridSize.medium,
          child: EarthquakeHistoryBentoCard(),
        ),
        const BentoGridItem(
          id: 'dmdata_websocket',
          size: BentoGridSize.small,
          child: DmdataWebsocketConnectionBentoCard(),
        ),
      ];
}
