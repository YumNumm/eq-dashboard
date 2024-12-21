import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_history_notifier.g.dart';

@Riverpod(keepAlive: true)
class EarthquakeHistoryNotifier extends _$EarthquakeHistoryNotifier {
  @override
  Future<EarthquakeListState> build() {
    throw UnimplementedError();
  }
}
