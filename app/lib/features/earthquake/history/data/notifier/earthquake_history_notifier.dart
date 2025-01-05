import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_list_state.dart';
import 'package:eqdashboard/features/earthquake/history/data/use_case/earthquake_list_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_history_notifier.g.dart';

@Riverpod(keepAlive: true)
class EarthquakeHistoryNotifier extends _$EarthquakeHistoryNotifier {
  @override
  Future<EarthquakeListState> build() {
    final useCase = ref.watch(earthquakeListUseCaseProvider);
    return useCase.fetchList(
      limit: 50,
      nextToken: null,
    );
  }

  Future<void> loadMore() async {
    final useCase = ref.read(earthquakeListUseCaseProvider);
    final nextToken = state.valueOrNull?.nextToken;

    if (state.isLoading || nextToken == null) {
      return;
    }

    state = const AsyncLoading<EarthquakeListState>().copyWithPrevious(state);

    state = await AsyncValue.guard(() async {
      final result = await useCase.fetchList(
        limit: 50,
        nextToken: nextToken,
      );

      final currentItems = state.valueOrNull;

      return EarthquakeListState(
        items: [
          ...result.items,
          if (currentItems != null) ...currentItems.items,
        ],
        nextToken: result.nextToken,
        lastUpdatedAt: result.lastUpdatedAt,
        isSupportingRealtimeUpdate: result.isSupportingRealtimeUpdate,
      );
    });
  }
}
