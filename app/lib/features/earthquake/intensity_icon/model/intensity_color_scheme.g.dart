// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'intensity_color_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntensityColorSchemeImpl _$$IntensityColorSchemeImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$IntensityColorSchemeImpl',
      json,
      ($checkedConvert) {
        final val = _$IntensityColorSchemeImpl(
          unknown: $checkedConvert('unknown',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          zero: $checkedConvert('zero',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          one: $checkedConvert(
              'one', (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          two: $checkedConvert(
              'two', (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          three: $checkedConvert('three',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          four: $checkedConvert('four',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          fiveLower: $checkedConvert('five_lower',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          fiveUpper: $checkedConvert('five_upper',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          sixLower: $checkedConvert('six_lower',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          sixUpper: $checkedConvert('six_upper',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
          seven: $checkedConvert('seven',
              (v) => TextColorModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'fiveLower': 'five_lower',
        'fiveUpper': 'five_upper',
        'sixLower': 'six_lower',
        'sixUpper': 'six_upper'
      },
    );

Map<String, dynamic> _$$IntensityColorSchemeImplToJson(
        _$IntensityColorSchemeImpl instance) =>
    <String, dynamic>{
      'unknown': instance.unknown,
      'zero': instance.zero,
      'one': instance.one,
      'two': instance.two,
      'three': instance.three,
      'four': instance.four,
      'five_lower': instance.fiveLower,
      'five_upper': instance.fiveUpper,
      'six_lower': instance.sixLower,
      'six_upper': instance.sixUpper,
      'seven': instance.seven,
    };

_$TextColorModelImpl _$$TextColorModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TextColorModelImpl',
      json,
      ($checkedConvert) {
        final val = _$TextColorModelImpl(
          foreground:
              $checkedConvert('foreground', (v) => colorFromJson(v as String)),
          background:
              $checkedConvert('background', (v) => colorFromJson(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TextColorModelImplToJson(
        _$TextColorModelImpl instance) =>
    <String, dynamic>{
      'foreground': colorToJson(instance.foreground),
      'background': colorToJson(instance.background),
    };
