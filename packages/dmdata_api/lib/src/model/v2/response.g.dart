// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DmdataErrorResponseImpl _$$DmdataErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmdataErrorResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$DmdataErrorResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          error: $checkedConvert(
              'error', (v) => ErrorInfo.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DmdataErrorResponseImplToJson(
        _$DmdataErrorResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'error': instance.error,
    };

_$ErrorInfoImpl _$$ErrorInfoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ErrorInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$ErrorInfoImpl(
          message: $checkedConvert('message', (v) => v as String),
          code: $checkedConvert('code', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ErrorInfoImplToJson(_$ErrorInfoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
