import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_list_state.dart';

abstract class EarthquakeListUseCase {
  Future<EarthquakeListState> fetchList({
    required int limit,
    required String? nextToken,
  });
}
