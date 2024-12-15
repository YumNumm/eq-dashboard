import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_alive_check_service.g.dart';

@Riverpod(keepAlive: true)
EewAliveChecker eewAliveChecker(Ref ref) => EewAliveChecker();

class EewAliveChecker {
  /// イベント終了の判定
  bool checkMarkAsEventEnded({
    required EewListItem eew,
    required DateTime now,
  }) {
    // 最終更新から1時間以上経過している場合、イベント終了と判定する
    final lastUpdatedAt = eew.updatedAt.toUtc();
    if (now.toUtc().difference(lastUpdatedAt).inHours > 1) {
      return true;
    }
    // 最新のEEWが取消の場合、発表から180秒を経過している場合、イベント終了と判定する
    if (eew.isCanceled) {
      return now.toUtc().difference(lastUpdatedAt).inSeconds > 180;
    }
    // 最新のEEWが通常の場合
    final earthquake = eew.earthquake!;
    final originTime = earthquake.originTime?.toUtc();
    final detectionTime = earthquake.detectionTime?.toUtc();
    final happenedTime = originTime ?? detectionTime!;
    final happenedDiff = now.toUtc().difference(happenedTime).inSeconds;
    final depth = earthquake.depth;

    // M6.0以上 or EEW警報の場合、360秒でイベント終了と判定する
    final isWarning = eew.isWarning ?? false;
    final magnitude = earthquake.magnitude;
    if ((magnitude != null && magnitude >= 6.0) || isWarning) {
      return happenedDiff > 360;
    }
    // 深さ不明/150km未満の場合、地震発生/検知から250秒でイベント終了と判定する
    if (depth == null || depth < 150) {
      return happenedDiff > 250;
    } else {
      // 深さ150km以上の場合、地震発生/検知から400秒でイベント終了と判定する
      return happenedDiff > 400;
    }
  }
}
