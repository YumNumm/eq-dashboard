import 'package:collection/collection.dart';
import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_history_list_item.dart';
import 'package:eqdashboard/features/earthquake/history/data/model/earthquake_list_state.dart';
import 'package:eqdashboard/features/earthquake/history/data/repository/earthquake_history_dmdata_repository.dart';
import 'package:eqdashboard/features/earthquake/history/data/use_case/earthquake_list_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'earthquake_list_dmdata_use_case.g.dart';

@Riverpod(keepAlive: true)
EarthquakeListDmdataUseCase earthquakeListDmdataUseCase(Ref ref) =>
    EarthquakeListDmdataUseCase(
      repository: ref.watch(earthquakeHistoryDmdataRepositoryProvider),
    );

class EarthquakeListDmdataUseCase implements EarthquakeListUseCase {
  EarthquakeListDmdataUseCase({
    required EarthquakeHistoryDmdataRepository repository,
  }) : _repository = repository;

  final EarthquakeHistoryDmdataRepository _repository;

  @override
  Future<EarthquakeListState> fetchList({
    required int limit,
    required String? nextToken,
  }) async {
    final result = await _repository.fetchList(
      limit: limit,
      nextToken: nextToken,
    );

    return EarthquakeListState(
      items: result.items.map(_toListItem).toList(),
      nextToken: result.nextToken,
      lastUpdatedAt: DateTime.now(),
      isSupportingRealtimeUpdate: false,
    );
  }

  EarthquakeHistoryListItem _toListItem(EarthquakeListItem item) {
    final originTime = item.originTime;
    final maxIntensity = item.maxInt;
    final maxLgIntensity = item.maxLgInt;

    final hypocenter = item.hypocenter;
    final magnitude = item.magnitude;

    return EarthquakeHistoryListItem(
      earthquakeType: switch (item.type) {
        'normal' => EarthquakeType.normal,
        'distant' => EarthquakeType.distant,
        _ => throw ArgumentError('Invalid earthquake type: ${item.type}'),
      },
      eventId: item.eventId,
      arrivalTime: DateTime.parse(item.arrivalTime),
      originTime: originTime != null ? DateTime.parse(originTime) : null,
      maxIntensity:
          maxIntensity != null ? JmaIntensity.fromString(maxIntensity) : null,
      maxLgIntensity: maxLgIntensity != null
          ? JmaLgIntensity.fromString(maxLgIntensity)
          : null,
      hypocenter: hypocenter != null
          ? () {
              final lat = hypocenter.coordinate.latitude?.value;
              final lon = hypocenter.coordinate.longitude?.value;
              final depth = hypocenter.depth.value;
              final depthCondition = hypocenter.depth.condition;

              final magnitudeValue = magnitude?.value;
              final magnitudeCondition = magnitude?.condition;
              return EarthquakeHistoryHypocenter(
                name: hypocenter.name,
                code: hypocenter.code,
                latitude: lat != null ? double.parse(lat) : null,
                longitude: lon != null ? double.parse(lon) : null,
                depth: depth != null ? int.parse(depth) : null,
                depthCondition: depthCondition != null
                    ? DepthCondition.values
                        .firstWhereOrNull((e) => e.value == depthCondition)
                    : null,
                magnitude: magnitudeValue != null
                    ? double.parse(magnitudeValue)
                    : null,
                magnitudeCondition: magnitudeCondition,
              );
            }()
          : null,
    );
  }
}
