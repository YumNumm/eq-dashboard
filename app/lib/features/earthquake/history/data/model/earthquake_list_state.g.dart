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
        );
        return val;
      },
      fieldKeyMap: const {'nextToken': 'next_token'},
    );

Map<String, dynamic> _$$EarthquakeListStateImplToJson(
        _$EarthquakeListStateImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'next_token': instance.nextToken,
    };
