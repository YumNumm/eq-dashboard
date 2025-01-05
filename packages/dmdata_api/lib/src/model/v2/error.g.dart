// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DmDataErrorImpl _$$DmDataErrorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmDataErrorImpl',
      json,
      ($checkedConvert) {
        final val = _$DmDataErrorImpl(
          message: $checkedConvert('message', (v) => v as String),
          code: $checkedConvert('code', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DmDataErrorImplToJson(_$DmDataErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
