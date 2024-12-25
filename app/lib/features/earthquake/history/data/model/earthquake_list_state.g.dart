// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeListStateImpl _$$EarthquakeListStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeListStateImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeListStateImpl(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => EarthquakeHistoryListItem.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          nextToken: $checkedConvert('next_token', (v) => v as String?),
          lastUpdatedAt: $checkedConvert('last_updated_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          isSupportingRealtimeUpdate: $checkedConvert(
              'is_supporting_realtime_update', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'nextToken': 'next_token',
        'lastUpdatedAt': 'last_updated_at',
        'isSupportingRealtimeUpdate': 'is_supporting_realtime_update'
      },
    );

Map<String, dynamic> _$$EarthquakeListStateImplToJson(
        _$EarthquakeListStateImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'next_token': instance.nextToken,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'is_supporting_realtime_update': instance.isSupportingRealtimeUpdate,
    };
