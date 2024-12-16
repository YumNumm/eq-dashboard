import 'package:dmdata_api/dmdata_api.dart' as dmdata_api;
import 'package:eqdashboard/core/models/intensity/jma_forecast_intensity.dart';
import 'package:eqdashboard/core/models/intensity/jma_forecast_lg_intensity.dart';
import 'package:eqdashboard/core/models/intensity/jma_intensity.dart';
import 'package:eqdashboard/features/eew/data/model/eew_list_item.dart';
import 'package:eqdashboard/features/eew/data/repository/eew_dmdata_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'eew_dmdata_use_case.g.dart';

class EewUsecaseListResponse {
  const EewUsecaseListResponse({
    required this.items,
    required this.nextToken,
  });

  final List<EewListItem> items;
  final String? nextToken;
}

@Riverpod(keepAlive: true)
EewDmdataUseCase eewDmdataUseCase(Ref ref) => EewDmdataUseCase(
      repository: ref.watch(eewDmdataRepositoryProvider),
    );

class EewDmdataUseCase {
  EewDmdataUseCase({
    required EewDmdataRepository repository,
  }) : _repository = repository;

  final EewDmdataRepository _repository;

  Future<EewUsecaseListResponse> fetch({
    String? nextToken,
  }) async {
    final response = await _repository.fetchList();
    return EewUsecaseListResponse(
      items: response.items.map(_convertToEewListItem).toList(),
      nextToken: response.nextToken,
    );
  }

  EewListItem _convertToEewListItem(dmdata_api.EewListItem data) {
    final regions = data.intensity?.regions;

    return EewListItem(
      eventId: data.eventId,
      serialNo: data.serial,
      isCanceled: data.isCanceled,
      isWarning: data.isWarning,
      text: data.text,
      isLastReport: data.isLastInfo,
      updatedAt: DateTime.parse(data.dateTime),
      earthquake: data.earthquake != null
          ? _convertToEewEarthquake(data.earthquake!)
          : null,
      intensity: data.intensity != null
          ? _convertToEewIntensity(data.intensity!)
          : null,
      intensityRegions: regions?.map(_convertToEewIntensityRegion).toList(),
    );
  }

  EewEarthquake _convertToEewEarthquake(dmdata_api.EewEarthquake data) {
    final lat = data.hypocenter.coordinate.latitude?.value;
    final lon = data.hypocenter.coordinate.longitude?.value;
    final depth = data.hypocenter.depth.value;
    final magnitude = data.magnitude.value;
    return EewEarthquake(
      originTime:
          data.originTime != null ? DateTime.parse(data.originTime!) : null,
      detectionTime: DateTime.parse(data.arrivalTime),
      isHypothetical: data.condition == '仮定震源要素',
      hypocenterCode: data.hypocenter.code,
      hypocenterName: data.hypocenter.name,
      latitude: lat != null ? double.parse(lat) : null,
      longitude: lon != null ? double.parse(lon) : null,
      depth: depth != null ? int.parse(depth) : null,
      depthCondition: data.hypocenter.depth.condition != null
          ? _convertToEewDepthCondition(data.hypocenter.depth.condition!)
          : null,
      magnitude: magnitude != null ? double.parse(magnitude) : null,
      magnitudeCondition: data.magnitude.condition,
    );
  }

  EewIntensity _convertToEewIntensity(dmdata_api.EewIntensity data) {
    final lgIntensity = data.forecastMaxLgInt;
    return EewIntensity(
      forecastMaxIntensity: JmaForecastIntensity(
        from: JmaIntensity.fromString(data.forecastMaxInt.from),
        to: JmaIntensity.fromString(data.forecastMaxInt.to),
      ),
      forecastMaxLgIntensity: lgIntensity != null
          ? JmaForecastLgIntensity(
              from: JmaLgIntensity.fromString(lgIntensity.from),
              to: JmaLgIntensity.fromString(lgIntensity.to),
            )
          : null,
    );
  }

  EewDepthCondition _convertToEewDepthCondition(String value) =>
      switch (value) {
        'ごく浅い' => EewDepthCondition.veryShallow,
        '７００ｋｍ以上' => EewDepthCondition.moreThan700km,
        '不明' => EewDepthCondition.unknown,
        _ => EewDepthCondition.unknown,
      };

  EewIntensityRegion _convertToEewIntensityRegion(
    dmdata_api.EewIntensityRegion data,
  ) {
    return EewIntensityRegion(
      code: data.code,
      name: data.name,
      isPlum: data.isPlum,
      isWarning: data.isWarning,
      forecastIntensity: _convertToJmaForecastIntensity(data.forecastMaxInt),
      forecastLgIntensity: data.forecastMaxLgInt != null
          ? _convertToJmaForecastLgIntensity(data.forecastMaxLgInt!)
          : null,
      isSWaveArrived: data.condition == '主要動到達',
      sWaveArrivalEstimatedAt:
          data.arrivalTime != null ? DateTime.parse(data.arrivalTime!) : null,
    );
  }

  JmaForecastIntensity _convertToJmaForecastIntensity(
    dmdata_api.ForecastMaxInt data,
  ) =>
      JmaForecastIntensity(
        from: JmaIntensity.fromString(data.from),
        to: JmaIntensity.fromString(data.to),
      );

  JmaForecastLgIntensity? _convertToJmaForecastLgIntensity(
    dmdata_api.ForecastMaxLgInt data,
  ) =>
      JmaForecastLgIntensity(
        from: JmaLgIntensity.fromString(data.from),
        to: JmaLgIntensity.fromString(data.to),
      );
}
