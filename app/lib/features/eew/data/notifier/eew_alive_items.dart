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
  AsyncValue<List<EewListItem>> build() {
    final state = ref.watch(eewListNotifierProvider);
    final now = ref.watch(ntpTimeTickerProvider).valueOrNull ?? DateTime.now();

    final checker = ref.watch(eewAliveCheckerProvider);
    return switch (state) {
      AsyncData(:final value) => AsyncData(
          value.items
              .where((e) => !checker.checkMarkAsEventEnded(eew: e, now: now))
              .toList(),
        ),
      AsyncError(:final error, :final stackTrace) =>
        AsyncError(error, stackTrace),
      _ => const AsyncLoading(),
    };
  }

  @override
  bool updateShouldNotify(
    AsyncValue<List<EewListItem>> previous,
    AsyncValue<List<EewListItem>> next,
  ) {
    if (previous is AsyncData && next is AsyncData) {
      return const ListEquality<EewListItem>()
          .equals(previous.value, next.value);
    }
    return super.updateShouldNotify(previous, next);
  }
}

class EewAliveItemsException implements Exception {
  EewAliveItemsException({
    required this.message,
  });

  final String message;
}
