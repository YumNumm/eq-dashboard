// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'websocket_connection_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketConnectionCountModelImpl
    _$$WebsocketConnectionCountModelImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$WebsocketConnectionCountModelImpl',
          json,
          ($checkedConvert) {
            final val = _$WebsocketConnectionCountModelImpl(
              availableCount:
                  $checkedConvert('available_count', (v) => (v as num).toInt()),
              totalCount:
                  $checkedConvert('total_count', (v) => (v as num).toInt()),
            );
            return val;
          },
          fieldKeyMap: const {
            'availableCount': 'available_count',
            'totalCount': 'total_count'
          },
        );

Map<String, dynamic> _$$WebsocketConnectionCountModelImplToJson(
        _$WebsocketConnectionCountModelImpl instance) =>
    <String, dynamic>{
      'available_count': instance.availableCount,
      'total_count': instance.totalCount,
    };
