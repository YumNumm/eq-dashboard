// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeStationResponseImpl _$$EarthquakeStationResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeStationResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeStationResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          changeTime: $checkedConvert('changeTime', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      EarthquakeStationItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeStationResponseImplToJson(
        _$EarthquakeStationResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'changeTime': instance.changeTime,
      'version': instance.version,
      'items': instance.items,
    };

_$EarthquakeStationItemImpl _$$EarthquakeStationItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeStationItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeStationItemImpl(
          region: $checkedConvert(
              'region', (v) => Region.fromJson(v as Map<String, dynamic>)),
          city: $checkedConvert(
              'city', (v) => City.fromJson(v as Map<String, dynamic>)),
          noCode: $checkedConvert('noCode', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          kana: $checkedConvert('kana', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          owner: $checkedConvert('owner', (v) => v as String),
          latitude: $checkedConvert('latitude', (v) => v as String),
          longitude: $checkedConvert('longitude', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeStationItemImplToJson(
        _$EarthquakeStationItemImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'city': instance.city,
      'noCode': instance.noCode,
      'code': instance.code,
      'name': instance.name,
      'kana': instance.kana,
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
          kana: $checkedConvert('kana', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'kana': instance.kana,
    };

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$CityImpl',
      json,
      ($checkedConvert) {
        final val = _$CityImpl(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          kana: $checkedConvert('kana', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'kana': instance.kana,
    };
