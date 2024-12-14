// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'websocket_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketPingRequestImpl _$$WebSocketPingRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketPingRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketPingRequestImpl(
          type: $checkedConvert('type', (v) => v as String),
          pingId: $checkedConvert('pingId', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$WebSocketPingRequestImplToJson(
        _$WebSocketPingRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'pingId': instance.pingId,
      'runtimeType': instance.$type,
    };

_$WebSocketPongRequestImpl _$$WebSocketPongRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketPongRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketPongRequestImpl(
          type: $checkedConvert('type', (v) => v as String),
          pingId: $checkedConvert('pingId', (v) => v as String?),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$WebSocketPongRequestImplToJson(
        _$WebSocketPongRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'pingId': instance.pingId,
      'runtimeType': instance.$type,
    };
