// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeComponentImpl _$$EarthquakeComponentImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeComponentImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeComponentImpl(
          originTime: $checkedConvert('originTime', (v) => v as String),
          arrivalTime: $checkedConvert('arrivalTime', (v) => v as String),
          hypocenter: $checkedConvert('hypocenter',
              (v) => Hypocenter.fromJson(v as Map<String, dynamic>)),
          magnitude: $checkedConvert('magnitude',
              (v) => Magnitude.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeComponentImplToJson(
        _$EarthquakeComponentImpl instance) =>
    <String, dynamic>{
      'originTime': instance.originTime,
      'arrivalTime': instance.arrivalTime,
      'hypocenter': instance.hypocenter,
      'magnitude': instance.magnitude,
    };

_$HypocenterImpl _$$HypocenterImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$HypocenterImpl',
      json,
      ($checkedConvert) {
        final val = _$HypocenterImpl(
          name: $checkedConvert('name', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          coordinate: $checkedConvert('coordinate',
              (v) => Coordinate.fromJson(v as Map<String, dynamic>)),
          depth: $checkedConvert(
              'depth', (v) => Depth.fromJson(v as Map<String, dynamic>)),
          auxiliary: $checkedConvert(
              'auxiliary',
              (v) => v == null
                  ? null
                  : Auxiliary.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HypocenterImplToJson(_$HypocenterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'coordinate': instance.coordinate,
      'depth': instance.depth,
      'auxiliary': instance.auxiliary,
    };

_$CoordinateImpl _$$CoordinateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CoordinateImpl',
      json,
      ($checkedConvert) {
        final val = _$CoordinateImpl(
          latitude: $checkedConvert(
              'latitude',
              (v) => v == null
                  ? null
                  : CoordinateValue.fromJson(v as Map<String, dynamic>)),
          longitude: $checkedConvert(
              'longitude',
              (v) => v == null
                  ? null
                  : CoordinateValue.fromJson(v as Map<String, dynamic>)),
          height: $checkedConvert(
              'height',
              (v) => v == null
                  ? null
                  : Height.fromJson(v as Map<String, dynamic>)),
          geodeticSystem:
              $checkedConvert('geodeticSystem', (v) => v as String?),
          condition: $checkedConvert('condition', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CoordinateImplToJson(_$CoordinateImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'height': instance.height,
      'geodeticSystem': instance.geodeticSystem,
      'condition': instance.condition,
    };

_$CoordinateValueImpl _$$CoordinateValueImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CoordinateValueImpl',
      json,
      ($checkedConvert) {
        final val = _$CoordinateValueImpl(
          text: $checkedConvert('text', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CoordinateValueImplToJson(
        _$CoordinateValueImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

_$HeightImpl _$$HeightImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$HeightImpl',
      json,
      ($checkedConvert) {
        final val = _$HeightImpl(
          type: $checkedConvert('type', (v) => v as String),
          unit: $checkedConvert('unit', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HeightImplToJson(_$HeightImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'unit': instance.unit,
      'value': instance.value,
    };

_$DepthImpl _$$DepthImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$DepthImpl',
      json,
      ($checkedConvert) {
        final val = _$DepthImpl(
          type: $checkedConvert('type', (v) => v as String),
          unit: $checkedConvert('unit', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String?),
          condition: $checkedConvert('condition', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DepthImplToJson(_$DepthImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'unit': instance.unit,
      'value': instance.value,
      'condition': instance.condition,
    };

_$AuxiliaryImpl _$$AuxiliaryImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuxiliaryImpl',
      json,
      ($checkedConvert) {
        final val = _$AuxiliaryImpl(
          text: $checkedConvert('text', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          direction: $checkedConvert('direction', (v) => v as String),
          distance: $checkedConvert(
              'distance', (v) => Distance.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AuxiliaryImplToJson(_$AuxiliaryImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'code': instance.code,
      'name': instance.name,
      'direction': instance.direction,
      'distance': instance.distance,
    };

_$DistanceImpl _$$DistanceImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DistanceImpl',
      json,
      ($checkedConvert) {
        final val = _$DistanceImpl(
          unit: $checkedConvert('unit', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DistanceImplToJson(_$DistanceImpl instance) =>
    <String, dynamic>{
      'unit': instance.unit,
      'value': instance.value,
    };

_$MagnitudeImpl _$$MagnitudeImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MagnitudeImpl',
      json,
      ($checkedConvert) {
        final val = _$MagnitudeImpl(
          type: $checkedConvert('type', (v) => v as String),
          unit: $checkedConvert('unit', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String?),
          condition: $checkedConvert('condition', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MagnitudeImplToJson(_$MagnitudeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'unit': instance.unit,
      'value': instance.value,
      'condition': instance.condition,
    };
