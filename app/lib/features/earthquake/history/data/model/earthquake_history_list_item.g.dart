// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_history_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeHistoryListItemImpl _$$EarthquakeHistoryListItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeHistoryListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeHistoryListItemImpl(
          eventId: $checkedConvert('event_id', (v) => v as String),
          arrivalTime: $checkedConvert(
              'arrival_time', (v) => DateTime.parse(v as String)),
          originTime: $checkedConvert('origin_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          maxIntensity: $checkedConvert('max_intensity',
              (v) => $enumDecodeNullable(_$JmaIntensityEnumMap, v)),
          maxLgIntensity: $checkedConvert('max_lg_intensity',
              (v) => $enumDecodeNullable(_$JmaLgIntensityEnumMap, v)),
          hypocenter: $checkedConvert(
              'hypocenter',
              (v) => v == null
                  ? null
                  : EarthquakeHistoryHypocenter.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'eventId': 'event_id',
        'arrivalTime': 'arrival_time',
        'originTime': 'origin_time',
        'maxIntensity': 'max_intensity',
        'maxLgIntensity': 'max_lg_intensity'
      },
    );

Map<String, dynamic> _$$EarthquakeHistoryListItemImplToJson(
        _$EarthquakeHistoryListItemImpl instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'arrival_time': instance.arrivalTime.toIso8601String(),
      'origin_time': instance.originTime?.toIso8601String(),
      'max_intensity': _$JmaIntensityEnumMap[instance.maxIntensity],
      'max_lg_intensity': _$JmaLgIntensityEnumMap[instance.maxLgIntensity],
      'hypocenter': instance.hypocenter,
    };

const _$JmaIntensityEnumMap = {
  JmaIntensity.one: '1',
  JmaIntensity.two: '2',
  JmaIntensity.three: '3',
  JmaIntensity.four: '4',
  JmaIntensity.fiveLower: '5-',
  JmaIntensity.fiveUpper: '5+',
  JmaIntensity.sixLower: '6-',
  JmaIntensity.sixUpper: '6+',
  JmaIntensity.seven: '7',
  JmaIntensity.unknown: '不明',
  JmaIntensity.over: 'over',
  JmaIntensity.fiveUpperNoInput: '!5-',
};

const _$JmaLgIntensityEnumMap = {
  JmaLgIntensity.zero: '0',
  JmaLgIntensity.one: '1',
  JmaLgIntensity.two: '2',
  JmaLgIntensity.three: '3',
  JmaLgIntensity.four: '4',
  JmaLgIntensity.unknown: '不明',
  JmaLgIntensity.over: 'over',
};

_$EarthquakeHistoryHypocenterImpl _$$EarthquakeHistoryHypocenterImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeHistoryHypocenterImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeHistoryHypocenterImpl(
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          longitude:
              $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
          depth: $checkedConvert('depth', (v) => (v as num?)?.toInt()),
          depthCondition: $checkedConvert('depth_condition',
              (v) => $enumDecodeNullable(_$DepthConditionEnumMap, v)),
          magnitude:
              $checkedConvert('magnitude', (v) => (v as num?)?.toDouble()),
          magnitudeCondition:
              $checkedConvert('magnitude_condition', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'depthCondition': 'depth_condition',
        'magnitudeCondition': 'magnitude_condition'
      },
    );

Map<String, dynamic> _$$EarthquakeHistoryHypocenterImplToJson(
        _$EarthquakeHistoryHypocenterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'depth': instance.depth,
      'depth_condition': _$DepthConditionEnumMap[instance.depthCondition],
      'magnitude': instance.magnitude,
      'magnitude_condition': instance.magnitudeCondition,
    };

const _$DepthConditionEnumMap = {
  DepthCondition.veryShallow: 'veryShallow',
  DepthCondition.moreThan700km: 'moreThan700km',
  DepthCondition.unknown: 'unknown',
};
