// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_websocket_connection_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DmdataWebsocketConnectionParameterImpl
    _$$DmdataWebsocketConnectionParameterImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$DmdataWebsocketConnectionParameterImpl',
          json,
          ($checkedConvert) {
            final val = _$DmdataWebsocketConnectionParameterImpl(
              format: $checkedConvert('format', (v) => v as String? ?? 'raw'),
              appName: $checkedConvert('app_name', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {'appName': 'app_name'},
        );

Map<String, dynamic> _$$DmdataWebsocketConnectionParameterImplToJson(
        _$DmdataWebsocketConnectionParameterImpl instance) =>
    <String, dynamic>{
      'format': instance.format,
      'app_name': instance.appName,
    };
