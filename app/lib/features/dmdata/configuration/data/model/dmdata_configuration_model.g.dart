// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dmdata_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DmdataConfigurationModelImpl _$$DmdataConfigurationModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DmdataConfigurationModelImpl',
      json,
      ($checkedConvert) {
        final val = _$DmdataConfigurationModelImpl(
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

Map<String, dynamic> _$$DmdataConfigurationModelImplToJson(
        _$DmdataConfigurationModelImpl instance) =>
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
          forceDisconnectOtherConnectionWhenFull: $checkedConvert(
              'force_disconnect_other_connection_when_full',
              (v) => v as bool? ?? false),
          endpoint: $checkedConvert(
              'endpoint',
              (v) =>
                  $enumDecodeNullable(_$DmdataWebsocketEndpointEnumMap, v) ??
                  DmdataWebsocketEndpoint.tokyoAndOsaka),
          autoConnect:
              $checkedConvert('auto_connect', (v) => v as bool? ?? true),
          includeTestTelegram: $checkedConvert(
              'include_test_telegram',
              (v) =>
                  $enumDecodeNullable(
                      _$DmdataWebsocketIncludeTestTelegramEnumMap, v) ??
                  DmdataWebsocketIncludeTestTelegram.no),
          appName:
              $checkedConvert('app_name', (v) => v as String? ?? 'EQDashboard'),
        );
        return val;
      },
      fieldKeyMap: const {
        'pingInterval': 'ping_interval',
        'connectionTimeout': 'connection_timeout',
        'forceDisconnectOtherConnectionWhenFull':
            'force_disconnect_other_connection_when_full',
        'autoConnect': 'auto_connect',
        'includeTestTelegram': 'include_test_telegram',
        'appName': 'app_name'
      },
    );

Map<String, dynamic> _$$DmdataWebSocketConfigurationImplToJson(
        _$DmdataWebSocketConfigurationImpl instance) =>
    <String, dynamic>{
      'ping_interval': instance.pingInterval.inMicroseconds,
      'connection_timeout': instance.connectionTimeout.inMicroseconds,
      'force_disconnect_other_connection_when_full':
          instance.forceDisconnectOtherConnectionWhenFull,
      'endpoint': _$DmdataWebsocketEndpointEnumMap[instance.endpoint]!,
      'auto_connect': instance.autoConnect,
      'include_test_telegram': _$DmdataWebsocketIncludeTestTelegramEnumMap[
          instance.includeTestTelegram]!,
      'app_name': instance.appName,
    };

const _$DmdataWebsocketEndpointEnumMap = {
  DmdataWebsocketEndpoint.tokyoAndOsaka: 'tokyoAndOsaka',
  DmdataWebsocketEndpoint.tokyo: 'tokyo',
  DmdataWebsocketEndpoint.tokyo001: 'tokyo001',
  DmdataWebsocketEndpoint.tokyo002: 'tokyo002',
  DmdataWebsocketEndpoint.osaka: 'osaka',
  DmdataWebsocketEndpoint.osaka003: 'osaka003',
  DmdataWebsocketEndpoint.osaka004: 'osaka004',
};

const _$DmdataWebsocketIncludeTestTelegramEnumMap = {
  DmdataWebsocketIncludeTestTelegram.no: 'no',
  DmdataWebsocketIncludeTestTelegram.including: 'including',
};
