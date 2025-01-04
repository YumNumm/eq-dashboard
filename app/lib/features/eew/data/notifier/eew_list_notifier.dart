import 'package:eqdashboard/features/eew/data/model/eew_list_notifier_state.dart';
import 'package:eqdashboard/features/eew/data/use_case/eew_dmdata_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class EewListNotifier extends _$EewListNotifier {
  @override
  Future<EewListNotifierState> build() async {
    final usecase = ref.watch(eewDmdataUseCaseProvider);
    final response = await usecase.fetch();
    return EewListNotifierState(
      items: response.items,
      nextToken: response.nextToken,
      lastUpdatedAt: DateTime.now(),
      isSupportingRealtimeUpdate: false,
    );
  }

  Future<void> fetchNext() async {
    if (state.isLoading) {
      return;
    }
    final nextToken = state.valueOrNull?.nextToken;
    if (nextToken == null) {
      return;
    }

    state = const AsyncLoading<EewListNotifierState>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async {
        final usecase = ref.watch(eewDmdataUseCaseProvider);
        final response = await usecase.fetch(nextToken: nextToken);
        return EewListNotifierState(
          items: response.items,
          nextToken: response.nextToken,
          lastUpdatedAt: DateTime.now(),
          isSupportingRealtimeUpdate: false,
        );
      },
    );
  }
}
