// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DMMErrorImpl _$$DMMErrorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DMMErrorImpl',
      json,
      ($checkedConvert) {
        final val = _$DMMErrorImpl(
          message: $checkedConvert('message', (v) => v as String),
          code: $checkedConvert('code', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DMMErrorImplToJson(_$DMMErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
