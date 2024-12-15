import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/use_case/eew_dmdata_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_list_notifier.g.dart';

@Riverpod(keepAlive: true)
class EewListNotifier extends _$EewListNotifier {
  String? _nextToken;

  @override
  Future<List<EewListItem>> build() async {
    final usecase = ref.watch(eewDmdataUseCaseProvider);
    final response = await usecase.fetch();
    _nextToken = response.nextToken;
    return response.items;
  }

  Future<void> fetchNext() async {
    if (_nextToken == null) {
      return;
    }
    if (state.isLoading) {
      return;
    }

    state = const AsyncLoading<List<EewListItem>>().copyWithPrevious(state);
    state = await AsyncValue.guard(
      () async {
        final usecase = ref.watch(eewDmdataUseCaseProvider);
        final response = await usecase.fetch(nextToken: _nextToken);
        _nextToken = response.nextToken;
        return response.items;
      },
    );
  }
}
