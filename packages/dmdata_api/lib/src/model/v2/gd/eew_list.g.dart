// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'eew_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EewListResponseImpl _$$EewListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$EewListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => EewListItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextToken: $checkedConvert('nextToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewListResponseImplToJson(
        _$EewListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'nextToken': instance.nextToken,
    };

_$EewListItemImpl _$$EewListItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EewListItemImpl(
          id: $checkedConvert('id', (v) => v),
          eventId: $checkedConvert('eventId', (v) => v as String),
          serial: $checkedConvert('serial', (v) => (v as num).toInt()),
          dateTime: $checkedConvert('dateTime', (v) => v as String),
          isLastInfo: $checkedConvert('isLastInfo', (v) => v as bool),
          isCanceled: $checkedConvert('isCanceled', (v) => v as bool),
          isWarning: $checkedConvert('isWarning', (v) => v as bool?),
          earthquake: $checkedConvert(
              'earthquake',
              (v) => v == null
                  ? null
                  : EewEarthquake.fromJson(v as Map<String, dynamic>)),
          intensity: $checkedConvert(
              'intensity',
              (v) => v == null
                  ? null
                  : EewIntensity.fromJson(v as Map<String, dynamic>)),
          text: $checkedConvert('text', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewListItemImplToJson(_$EewListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'serial': instance.serial,
      'dateTime': instance.dateTime,
      'isLastInfo': instance.isLastInfo,
      'isCanceled': instance.isCanceled,
      'isWarning': instance.isWarning,
      'earthquake': instance.earthquake,
      'intensity': instance.intensity,
      'text': instance.text,
    };

_$EewEarthquakeImpl _$$EewEarthquakeImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewEarthquakeImpl',
      json,
      ($checkedConvert) {
        final val = _$EewEarthquakeImpl(
          arrivalTime: $checkedConvert('arrivalTime', (v) => v as String),
          hypocenter: $checkedConvert('hypocenter',
              (v) => EewHypocenter.fromJson(v as Map<String, dynamic>)),
          magnitude: $checkedConvert('magnitude',
              (v) => Magnitude.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewEarthquakeImplToJson(_$EewEarthquakeImpl instance) =>
    <String, dynamic>{
      'arrivalTime': instance.arrivalTime,
      'hypocenter': instance.hypocenter,
      'magnitude': instance.magnitude,
    };

_$EewHypocenterImpl _$$EewHypocenterImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewHypocenterImpl',
      json,
      ($checkedConvert) {
        final val = _$EewHypocenterImpl(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          coordinate: $checkedConvert('coordinate',
              (v) => Coordinate.fromJson(v as Map<String, dynamic>)),
          depth: $checkedConvert(
              'depth', (v) => Depth.fromJson(v as Map<String, dynamic>)),
          reduce: $checkedConvert(
              'reduce', (v) => EewReduce.fromJson(v as Map<String, dynamic>)),
          accuracy: $checkedConvert('accuracy',
              (v) => EewAccuracy.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewHypocenterImplToJson(_$EewHypocenterImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'coordinate': instance.coordinate,
      'depth': instance.depth,
      'reduce': instance.reduce,
      'accuracy': instance.accuracy,
    };

_$EewReduceImpl _$$EewReduceImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewReduceImpl',
      json,
      ($checkedConvert) {
        final val = _$EewReduceImpl(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewReduceImplToJson(_$EewReduceImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$EewAccuracyImpl _$$EewAccuracyImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewAccuracyImpl',
      json,
      ($checkedConvert) {
        final val = _$EewAccuracyImpl(
          epicenters: $checkedConvert('epicenters',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          depth: $checkedConvert('depth', (v) => v as String),
          magnitudeCalculation:
              $checkedConvert('magnitudeCalculation', (v) => v as String),
          numberOfMagnitudeCalculation: $checkedConvert(
              'numberOfMagnitudeCalculation', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewAccuracyImplToJson(_$EewAccuracyImpl instance) =>
    <String, dynamic>{
      'epicenters': instance.epicenters,
      'depth': instance.depth,
      'magnitudeCalculation': instance.magnitudeCalculation,
      'numberOfMagnitudeCalculation': instance.numberOfMagnitudeCalculation,
    };

_$EewIntensityImpl _$$EewIntensityImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewIntensityImpl',
      json,
      ($checkedConvert) {
        final val = _$EewIntensityImpl(
          forecastMaxInt: $checkedConvert('forecastMaxInt',
              (v) => ForecastMaxInt.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewIntensityImplToJson(_$EewIntensityImpl instance) =>
    <String, dynamic>{
      'forecastMaxInt': instance.forecastMaxInt,
    };

_$ForecastMaxIntImpl _$$ForecastMaxIntImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ForecastMaxIntImpl',
      json,
      ($checkedConvert) {
        final val = _$ForecastMaxIntImpl(
          from: $checkedConvert('from', (v) => v as String),
          to: $checkedConvert('to', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ForecastMaxIntImplToJson(
        _$ForecastMaxIntImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
