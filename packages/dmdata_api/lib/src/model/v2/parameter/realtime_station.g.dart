// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'realtime_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealtimeStationResponseImpl _$$RealtimeStationResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RealtimeStationResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$RealtimeStationResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          changeTime: $checkedConvert('changeTime', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RealtimeStationItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RealtimeStationResponseImplToJson(
        _$RealtimeStationResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'changeTime': instance.changeTime,
      'version': instance.version,
      'items': instance.items,
    };

_$RealtimeStationItemImpl _$$RealtimeStationItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RealtimeStationItemImpl',
      json,
      ($checkedConvert) {
        final val = _$RealtimeStationItemImpl(
          region: $checkedConvert(
              'region', (v) => Region.fromJson(v as Map<String, dynamic>)),
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          owner: $checkedConvert('owner', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => v as String),
          longitude: $checkedConvert('longitude', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RealtimeStationItemImplToJson(
        _$RealtimeStationItemImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'code': instance.code,
      'name': instance.name,
      'status': instance.status,
      'owner': instance.owner,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$RegionImpl',
      json,
      ($checkedConvert) {
        final val = _$RegionImpl(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
