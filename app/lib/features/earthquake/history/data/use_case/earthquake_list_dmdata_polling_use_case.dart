import 'package:eqdashboard/features/earthquake/history/data/repository/earthquake_history_dmdata_repository.dart';
import 'package:eqdashboard/features/earthquake/history/data/use_case/earthquake_list_dmdata_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_list_dmdata_polling_use_case.g.dart';

@Riverpod(keepAlive: true)
EarthquakeListDmdataPollingUseCase earthquakeListDmdataPollingUseCase(
  Ref ref,
) =>
    EarthquakeListDmdataPollingUseCase(
      repository: ref.watch(earthquakeHistoryDmdataRepositoryProvider),
    );

class EarthquakeListDmdataPollingUseCase extends EarthquakeListDmdataUseCase {
  EarthquakeListDmdataPollingUseCase({
    required super.repository,
  });
}
