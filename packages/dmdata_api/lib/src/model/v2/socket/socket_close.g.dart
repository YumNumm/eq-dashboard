// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'socket_close.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketCloseResponseImpl _$$SocketCloseResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SocketCloseResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SocketCloseResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SocketCloseResponseImplToJson(
        _$SocketCloseResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
    };
