// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'bento_saved_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BentoSavedStateImpl _$$BentoSavedStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BentoSavedStateImpl',
      json,
      ($checkedConvert) {
        final val = _$BentoSavedStateImpl(
          configs: $checkedConvert(
              'configs',
              (v) => (v as List<dynamic>)
                  .map((e) => BentoConfig.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BentoSavedStateImplToJson(
        _$BentoSavedStateImpl instance) =>
    <String, dynamic>{
      'configs': instance.configs,
    };
