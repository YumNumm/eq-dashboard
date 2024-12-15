import 'package:eqdashboard/core/provider/ntp/time_ticker.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_list_notifier.dart';
import 'package:eqdashboard/features/eew/data/service/eew_alive_check_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_alive_items.g.dart';

@Riverpod(keepAlive: true)
Future<List<EewListItem>> eewAliveItems(Ref ref) async {
  final state = await ref.watch(eewListNotifierProvider.future);
  final now = ref.watch(ntpTimeTickerProvider).valueOrNull ?? DateTime.now();

  final checker = ref.watch(eewAliveCheckerProvider);
  return [state.items.first];
  return state.items
      .where((e) => !checker.checkMarkAsEventEnded(eew: e, now: now))
      .toList();
}
