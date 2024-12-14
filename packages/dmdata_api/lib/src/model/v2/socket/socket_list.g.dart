// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'socket_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketListResponseImpl _$$SocketListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SocketListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$SocketListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => SocketItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextToken: $checkedConvert('nextToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SocketListResponseImplToJson(
        _$SocketListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'nextToken': instance.nextToken,
    };

_$SocketItemImpl _$$SocketItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SocketItemImpl',
      json,
      ($checkedConvert) {
        final val = _$SocketItemImpl(
          id: $checkedConvert('id', (v) => v),
          types: $checkedConvert('types',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          test: $checkedConvert('test', (v) => v as String),
          classifications: $checkedConvert('classifications',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          status: $checkedConvert('status', (v) => v as String),
          start: $checkedConvert('start', (v) => v as String),
          ticket: $checkedConvert('ticket', (v) => v as String?),
          ipAddress: $checkedConvert('ipAddress', (v) => v as String?),
          server: $checkedConvert('server', (v) => v as String?),
          end: $checkedConvert('end', (v) => v as String?),
          ping: $checkedConvert('ping', (v) => v as String?),
          appName: $checkedConvert('appName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SocketItemImplToJson(_$SocketItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'types': instance.types,
      'test': instance.test,
      'classifications': instance.classifications,
      'status': instance.status,
      'start': instance.start,
      'ticket': instance.ticket,
      'ipAddress': instance.ipAddress,
      'server': instance.server,
      'end': instance.end,
      'ping': instance.ping,
      'appName': instance.appName,
    };
