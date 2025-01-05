// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'bento_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BentoConfigImpl _$$BentoConfigImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BentoConfigImpl',
      json,
      ($checkedConvert) {
        final val = _$BentoConfigImpl(
          id: $checkedConvert('id', (v) => v as String),
          size: $checkedConvert(
              'size', (v) => $enumDecode(_$BentoGridSizeEnumMap, v)),
          order: $checkedConvert('order', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BentoConfigImplToJson(_$BentoConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': _$BentoGridSizeEnumMap[instance.size]!,
      'order': instance.order,
    };

const _$BentoGridSizeEnumMap = {
  BentoGridSize.small: 'small',
  BentoGridSize.medium: 'medium',
  BentoGridSize.large: 'large',
  BentoGridSize.xLarge: 'xLarge',
  BentoGridSize.xxLarge: 'xxLarge',
  BentoGridSize.xxxLarge: 'xxxLarge',
};
