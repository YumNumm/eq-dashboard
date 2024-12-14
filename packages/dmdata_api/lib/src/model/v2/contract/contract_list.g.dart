// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'contract_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractListResponseImpl _$$ContractListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ContractListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$ContractListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          ContractItem.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : DMMError.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ContractListResponseImplToJson(
        _$ContractListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'error': instance.error,
    };

_$ContractItemImpl _$$ContractItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ContractItemImpl',
      json,
      ($checkedConvert) {
        final val = _$ContractItemImpl(
          planId: $checkedConvert('planId', (v) => (v as num).toInt()),
          planName: $checkedConvert('planName', (v) => v as String),
          classification: $checkedConvert('classification', (v) => v as String),
          price: $checkedConvert('price',
              (v) => ContractPrice.fromJson(v as Map<String, dynamic>)),
          isValid: $checkedConvert('isValid', (v) => v as bool),
          connectionCounts:
              $checkedConvert('connectionCounts', (v) => (v as num).toInt()),
          id: $checkedConvert('id', (v) => v),
          start: $checkedConvert('start', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ContractItemImplToJson(_$ContractItemImpl instance) =>
    <String, dynamic>{
      'planId': instance.planId,
      'planName': instance.planName,
      'classification': instance.classification,
      'price': instance.price,
      'isValid': instance.isValid,
      'connectionCounts': instance.connectionCounts,
      'id': instance.id,
      'start': instance.start,
    };

_$ContractPriceImpl _$$ContractPriceImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ContractPriceImpl',
      json,
      ($checkedConvert) {
        final val = _$ContractPriceImpl(
          day: $checkedConvert('day', (v) => (v as num).toInt()),
          month: $checkedConvert('month', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ContractPriceImplToJson(_$ContractPriceImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'month': instance.month,
    };
