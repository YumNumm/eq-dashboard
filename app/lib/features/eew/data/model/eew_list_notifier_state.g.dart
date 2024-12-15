// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'eew_list_notifier_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EewListNotifierStateImpl _$$EewListNotifierStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewListNotifierStateImpl',
      json,
      ($checkedConvert) {
        final val = _$EewListNotifierStateImpl(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => EewListItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextToken: $checkedConvert('next_token', (v) => v as String?),
          lastUpdateAt: $checkedConvert('last_update_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          isSupportingRealtimeUpdate: $checkedConvert(
              'is_supporting_realtime_update', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'nextToken': 'next_token',
        'lastUpdateAt': 'last_update_at',
        'isSupportingRealtimeUpdate': 'is_supporting_realtime_update'
      },
    );

Map<String, dynamic> _$$EewListNotifierStateImplToJson(
        _$EewListNotifierStateImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'next_token': instance.nextToken,
      'last_update_at': instance.lastUpdateAt?.toIso8601String(),
      'is_supporting_realtime_update': instance.isSupportingRealtimeUpdate,
    };
