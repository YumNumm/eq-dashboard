import 'package:collection/collection.dart';
import 'package:eqdashboard/core/provider/ntp/time_ticker.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/notifier/eew_list_notifier.dart';
import 'package:eqdashboard/features/eew/data/service/eew_alive_check_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_alive_items.g.dart';

@Riverpod(keepAlive: true)
class EewAliveItems extends _$EewAliveItems {
  @override
  List<EewListItem> build() {
    final state = ref.watch(eewListNotifierProvider);
    if (!state.hasValue) {
      if (state.isLoading) {
        throw EewAliveItemsException(
          message: 'EewListNotifier is loading',
        );
      }
      if (state.hasError) {
        throw EewAliveItemsException(
          message: 'EewListNotifier has error',
        );
      }
    }
    final stateOrNull = state.valueOrNull;
    if (stateOrNull == null) {
      throw EewAliveItemsException(
        message: 'EewListNotifier is not initialized',
      );
    }

    final now = ref.watch(ntpTimeTickerProvider).valueOrNull ?? DateTime.now();

    final checker = ref.watch(eewAliveCheckerProvider);
    return stateOrNull.items
        .where((e) => !checker.checkMarkAsEventEnded(eew: e, now: now))
        .toList();
  }

  @override
  bool updateShouldNotify(
    List<EewListItem>? previous,
    List<EewListItem>? next,
  ) =>
      !const ListEquality<EewListItem>().equals(previous, next);
}

class EewAliveItemsException implements Exception {
  EewAliveItemsException({
    required this.message,
  });

  final String message;
}
