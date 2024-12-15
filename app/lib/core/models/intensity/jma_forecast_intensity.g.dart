// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'jma_forecast_intensity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JmaForecastIntensityImpl _$$JmaForecastIntensityImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaForecastIntensityImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaForecastIntensityImpl(
          from: $checkedConvert(
              'from', (v) => $enumDecode(_$JmaIntensityEnumMap, v)),
          to: $checkedConvert(
              'to', (v) => $enumDecode(_$JmaIntensityEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaForecastIntensityImplToJson(
        _$JmaForecastIntensityImpl instance) =>
    <String, dynamic>{
      'from': _$JmaIntensityEnumMap[instance.from]!,
      'to': _$JmaIntensityEnumMap[instance.to]!,
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
};
