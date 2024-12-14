// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeListResponseImpl _$$EarthquakeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      EarthquakeListItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextPooling: $checkedConvert('nextPooling', (v) => v as String),
          nextPoolingInterval:
              $checkedConvert('nextPoolingInterval', (v) => (v as num).toInt()),
          nextToken: $checkedConvert('nextToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeListResponseImplToJson(
        _$EarthquakeListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'nextPooling': instance.nextPooling,
      'nextPoolingInterval': instance.nextPoolingInterval,
      'nextToken': instance.nextToken,
    };

_$EarthquakeListItemImpl _$$EarthquakeListItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeListItemImpl(
          id: $checkedConvert('id', (v) => v),
          type: $checkedConvert('type', (v) => v as String),
          eventId: $checkedConvert('eventId', (v) => v as String),
          arrivalTime: $checkedConvert('arrivalTime', (v) => v as String),
          originTime: $checkedConvert('originTime', (v) => v as String?),
          hypocenter: $checkedConvert(
              'hypocenter',
              (v) => v == null
                  ? null
                  : Hypocenter.fromJson(v as Map<String, dynamic>)),
          magnitude: $checkedConvert(
              'magnitude',
              (v) => v == null
                  ? null
                  : Magnitude.fromJson(v as Map<String, dynamic>)),
          maxInt: $checkedConvert('maxInt', (v) => v as String?),
          maxLgInt: $checkedConvert('maxLgInt', (v) => v as String?),
          lgCategory: $checkedConvert('lgCategory', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeListItemImplToJson(
        _$EarthquakeListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'eventId': instance.eventId,
      'arrivalTime': instance.arrivalTime,
      'originTime': instance.originTime,
      'hypocenter': instance.hypocenter,
      'magnitude': instance.magnitude,
      'maxInt': instance.maxInt,
      'maxLgInt': instance.maxLgInt,
      'lgCategory': instance.lgCategory,
    };
