// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'jma_forecast_lg_intensity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JmaForecastLgIntensityImpl _$$JmaForecastLgIntensityImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaForecastLgIntensityImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaForecastLgIntensityImpl(
          from: $checkedConvert(
              'from', (v) => $enumDecode(_$JmaLgIntensityEnumMap, v)),
          to: $checkedConvert(
              'to', (v) => $enumDecode(_$JmaLgIntensityEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaForecastLgIntensityImplToJson(
        _$JmaForecastLgIntensityImpl instance) =>
    <String, dynamic>{
      'from': _$JmaLgIntensityEnumMap[instance.from]!,
      'to': _$JmaLgIntensityEnumMap[instance.to]!,
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
