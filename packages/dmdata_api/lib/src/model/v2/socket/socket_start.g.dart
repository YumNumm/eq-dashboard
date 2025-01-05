// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'socket_start.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketStartResponseImpl _$$SocketStartResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SocketStartResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SocketStartResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          ticket: $checkedConvert('ticket', (v) => v as String),
          websocket: $checkedConvert('websocket',
              (v) => WebSocketInfo.fromJson(v as Map<String, dynamic>)),
          classifications: $checkedConvert('classifications',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          test: $checkedConvert('test', (v) => v as String),
          formats: $checkedConvert('formats',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          types: $checkedConvert('types',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          appName: $checkedConvert('appName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SocketStartResponseImplToJson(
        _$SocketStartResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'ticket': instance.ticket,
      'websocket': instance.websocket,
      'classifications': instance.classifications,
      'test': instance.test,
      'formats': instance.formats,
      'types': instance.types,
      'appName': instance.appName,
    };

_$WebSocketInfoImpl _$$WebSocketInfoImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketInfoImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketInfoImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          url: $checkedConvert('url', (v) => v as String),
          protocol: $checkedConvert('protocol',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          expiration: $checkedConvert('expiration', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketInfoImplToJson(_$WebSocketInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'protocol': instance.protocol,
      'expiration': instance.expiration,
    };

_$SocketStartRequestImpl _$$SocketStartRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SocketStartRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$SocketStartRequestImpl(
          classifications: $checkedConvert('classifications',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          types: $checkedConvert('types',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          test: $checkedConvert('test', (v) => v as String? ?? 'no'),
          appName: $checkedConvert('appName', (v) => v as String?),
          format: $checkedConvert('format', (v) => v as String? ?? 'raw'),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SocketStartRequestImplToJson(
        _$SocketStartRequestImpl instance) =>
    <String, dynamic>{
      'classifications': instance.classifications,
      if (instance.types case final value?) 'types': value,
      'test': instance.test,
      'appName': instance.appName,
      'format': instance.format,
    };
