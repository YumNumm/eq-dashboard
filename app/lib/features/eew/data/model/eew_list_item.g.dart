// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'eew_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EewListItemImpl _$$EewListItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EewListItemImpl(
          eventId: $checkedConvert('event_id', (v) => v as String),
          serialNo: $checkedConvert('serial_no', (v) => (v as num).toInt()),
          isLastReport: $checkedConvert('is_last_report', (v) => v as bool),
          updatedAt:
              $checkedConvert('updated_at', (v) => DateTime.parse(v as String)),
          isCanceled: $checkedConvert('is_canceled', (v) => v as bool),
          isWarning: $checkedConvert('is_warning', (v) => v as bool?),
          text: $checkedConvert('text', (v) => v as String?),
          earthquake: $checkedConvert(
              'earthquake',
              (v) => v == null
                  ? null
                  : EewEarthquake.fromJson(v as Map<String, dynamic>)),
          intensity: $checkedConvert(
              'intensity',
              (v) => v == null
                  ? null
                  : EewIntensity.fromJson(v as Map<String, dynamic>)),
          intensityRegions: $checkedConvert(
              'intensity_regions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      EewIntensityRegion.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventId': 'event_id',
        'serialNo': 'serial_no',
        'isLastReport': 'is_last_report',
        'updatedAt': 'updated_at',
        'isCanceled': 'is_canceled',
        'isWarning': 'is_warning',
        'intensityRegions': 'intensity_regions'
      },
    );

Map<String, dynamic> _$$EewListItemImplToJson(_$EewListItemImpl instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'serial_no': instance.serialNo,
      'is_last_report': instance.isLastReport,
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_canceled': instance.isCanceled,
      'is_warning': instance.isWarning,
      'text': instance.text,
      'earthquake': instance.earthquake,
      'intensity': instance.intensity,
      'intensity_regions': instance.intensityRegions,
    };

_$EewEarthquakeImpl _$$EewEarthquakeImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewEarthquakeImpl',
      json,
      ($checkedConvert) {
        final val = _$EewEarthquakeImpl(
          originTime: $checkedConvert('origin_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          detectionTime: $checkedConvert('detection_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          isHypothetical: $checkedConvert('is_hypothetical', (v) => v as bool),
          hypocenterCode:
              $checkedConvert('hypocenter_code', (v) => v as String),
          hypocenterName:
              $checkedConvert('hypocenter_name', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          depth: $checkedConvert('depth', (v) => (v as num?)?.toInt()),
          depthCondition: $checkedConvert('depth_condition',
              (v) => $enumDecodeNullable(_$EewDepthConditionEnumMap, v)),
          magnitude:
              $checkedConvert('magnitude', (v) => (v as num?)?.toDouble()),
          magnitudeCondition:
              $checkedConvert('magnitude_condition', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'originTime': 'origin_time',
        'detectionTime': 'detection_time',
        'isHypothetical': 'is_hypothetical',
        'hypocenterCode': 'hypocenter_code',
        'hypocenterName': 'hypocenter_name',
        'depthCondition': 'depth_condition',
        'magnitudeCondition': 'magnitude_condition'
      },
    );

Map<String, dynamic> _$$EewEarthquakeImplToJson(_$EewEarthquakeImpl instance) =>
    <String, dynamic>{
      'origin_time': instance.originTime?.toIso8601String(),
      'detection_time': instance.detectionTime?.toIso8601String(),
      'is_hypothetical': instance.isHypothetical,
      'hypocenter_code': instance.hypocenterCode,
      'hypocenter_name': instance.hypocenterName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'depth': instance.depth,
      'depth_condition': _$EewDepthConditionEnumMap[instance.depthCondition],
      'magnitude': instance.magnitude,
      'magnitude_condition': instance.magnitudeCondition,
    };

const _$EewDepthConditionEnumMap = {
  EewDepthCondition.veryShallow: 'veryShallow',
  EewDepthCondition.moreThan700km: 'moreThan700km',
  EewDepthCondition.unknown: 'unknown',
};

_$EewIntensityImpl _$$EewIntensityImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewIntensityImpl',
      json,
      ($checkedConvert) {
        final val = _$EewIntensityImpl(
          forecastMaxIntensity: $checkedConvert('forecast_max_intensity',
              (v) => JmaForecastIntensity.fromJson(v as Map<String, dynamic>)),
          forecastMaxLgIntensity: $checkedConvert(
              'forecast_max_lg_intensity',
              (v) => v == null
                  ? null
                  : JmaForecastLgIntensity.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'forecastMaxIntensity': 'forecast_max_intensity',
        'forecastMaxLgIntensity': 'forecast_max_lg_intensity'
      },
    );

Map<String, dynamic> _$$EewIntensityImplToJson(_$EewIntensityImpl instance) =>
    <String, dynamic>{
      'forecast_max_intensity': instance.forecastMaxIntensity,
      'forecast_max_lg_intensity': instance.forecastMaxLgIntensity,
    };

_$EewIntensityRegionImpl _$$EewIntensityRegionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewIntensityRegionImpl',
      json,
      ($checkedConvert) {
        final val = _$EewIntensityRegionImpl(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          isPlum: $checkedConvert('is_plum', (v) => v as bool),
          isWarning: $checkedConvert('is_warning', (v) => v as bool),
          forecastIntensity: $checkedConvert('forecast_intensity',
              (v) => JmaForecastIntensity.fromJson(v as Map<String, dynamic>)),
          forecastLgIntensity: $checkedConvert(
              'forecast_lg_intensity',
              (v) => v == null
                  ? null
                  : JmaForecastLgIntensity.fromJson(v as Map<String, dynamic>)),
          isSWaveArrived:
              $checkedConvert('is_s_wave_arrived', (v) => v as bool),
          sWaveArrivalEstimatedAt: $checkedConvert(
              's_wave_arrival_estimated_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'isPlum': 'is_plum',
        'isWarning': 'is_warning',
        'forecastIntensity': 'forecast_intensity',
        'forecastLgIntensity': 'forecast_lg_intensity',
        'isSWaveArrived': 'is_s_wave_arrived',
        'sWaveArrivalEstimatedAt': 's_wave_arrival_estimated_at'
      },
    );

Map<String, dynamic> _$$EewIntensityRegionImplToJson(
        _$EewIntensityRegionImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_plum': instance.isPlum,
      'is_warning': instance.isWarning,
      'forecast_intensity': instance.forecastIntensity,
      'forecast_lg_intensity': instance.forecastLgIntensity,
      'is_s_wave_arrived': instance.isSWaveArrived,
      's_wave_arrival_estimated_at':
          instance.sWaveArrivalEstimatedAt?.toIso8601String(),
    };
