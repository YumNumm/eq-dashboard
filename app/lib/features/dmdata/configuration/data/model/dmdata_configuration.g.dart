// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DmdataConfigurationImpl _$$DmdataConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmdataConfigurationImpl',
      json,
      ($checkedConvert) {
        final val = _$DmdataConfigurationImpl(
          polling: $checkedConvert(
              'polling',
              (v) => DmdataPollingConfiguration.fromJson(
                  v as Map<String, dynamic>)),
          webSocket: $checkedConvert(
              'web_socket',
              (v) => DmdataWebSocketConfiguration.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'webSocket': 'web_socket'},
    );

Map<String, dynamic> _$$DmdataConfigurationImplToJson(
        _$DmdataConfigurationImpl instance) =>
    <String, dynamic>{
      'polling': instance.polling,
      'web_socket': instance.webSocket,
    };

_$DmdataPollingConfigurationImpl _$$DmdataPollingConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmdataPollingConfigurationImpl',
      json,
      ($checkedConvert) {
        final val = _$DmdataPollingConfigurationImpl(
          earthquakeListFetchInterval: $checkedConvert(
              'earthquake_list_fetch_interval',
              (v) => v == null
                  ? const Duration(seconds: 10)
                  : Duration(microseconds: (v as num).toInt())),
        );
        return val;
      },
      fieldKeyMap: const {
        'earthquakeListFetchInterval': 'earthquake_list_fetch_interval'
      },
    );

Map<String, dynamic> _$$DmdataPollingConfigurationImplToJson(
        _$DmdataPollingConfigurationImpl instance) =>
    <String, dynamic>{
      'earthquake_list_fetch_interval':
          instance.earthquakeListFetchInterval.inMicroseconds,
    };

_$DmdataWebSocketConfigurationImpl _$$DmdataWebSocketConfigurationImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmdataWebSocketConfigurationImpl',
      json,
      ($checkedConvert) {
        final val = _$DmdataWebSocketConfigurationImpl(
          pingInterval: $checkedConvert(
              'ping_interval',
              (v) => v == null
                  ? const Duration(seconds: 10)
                  : Duration(microseconds: (v as num).toInt())),
          connectionTimeout: $checkedConvert(
              'connection_timeout',
              (v) => v == null
                  ? const Duration(seconds: 10)
                  : Duration(microseconds: (v as num).toInt())),
        );
        return val;
      },
      fieldKeyMap: const {
        'pingInterval': 'ping_interval',
        'connectionTimeout': 'connection_timeout'
      },
    );

Map<String, dynamic> _$$DmdataWebSocketConfigurationImplToJson(
        _$DmdataWebSocketConfigurationImpl instance) =>
    <String, dynamic>{
      'ping_interval': instance.pingInterval.inMicroseconds,
      'connection_timeout': instance.connectionTimeout.inMicroseconds,
    };
