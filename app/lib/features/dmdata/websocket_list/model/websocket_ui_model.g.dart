// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'websocket_ui_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketUiModelImpl _$$WebsocketUiModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebsocketUiModelImpl',
      json,
      ($checkedConvert) {
        final val = _$WebsocketUiModelImpl(
          id: $checkedConvert('id', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$SocketStatusEnumMap, v)),
          classifications: $checkedConvert('classifications',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          test: $checkedConvert('test', (v) => v as bool),
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          ipAddress: $checkedConvert('ip_address', (v) => v as String?),
          server: $checkedConvert('server', (v) => v as String?),
          appName: $checkedConvert('app_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'ipAddress': 'ip_address', 'appName': 'app_name'},
    );

Map<String, dynamic> _$$WebsocketUiModelImplToJson(
        _$WebsocketUiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$SocketStatusEnumMap[instance.status]!,
      'classifications': instance.classifications,
      'test': instance.test,
      'start': instance.start.toIso8601String(),
      'ip_address': instance.ipAddress,
      'server': instance.server,
      'app_name': instance.appName,
    };

const _$SocketStatusEnumMap = {
  SocketStatus.open: 'open',
  SocketStatus.closed: 'closed',
  SocketStatus.waiting: 'waiting',
};
