// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'earthquake_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarthquakeEventImpl _$$EarthquakeEventImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeEventImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeEventImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          event: $checkedConvert('event',
              (v) => EarthquakeEventData.fromJson(v as Map<String, dynamic>)),
          error: $checkedConvert(
              'error',
              (v) => v == null
                  ? null
                  : DMMError.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeEventImplToJson(
        _$EarthquakeEventImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'event': instance.event,
      'error': instance.error,
    };

_$EarthquakeEventDataImpl _$$EarthquakeEventDataImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeEventDataImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeEventDataImpl(
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
          telegrams: $checkedConvert(
              'telegrams',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => EarthquakeTelegram.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeEventDataImplToJson(
        _$EarthquakeEventDataImpl instance) =>
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
      'telegrams': instance.telegrams,
    };

_$EarthquakeTelegramImpl _$$EarthquakeTelegramImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EarthquakeTelegramImpl',
      json,
      ($checkedConvert) {
        final val = _$EarthquakeTelegramImpl(
          serial: $checkedConvert('serial', (v) => (v as num).toInt()),
          id: $checkedConvert('id', (v) => v as String),
          originalId: $checkedConvert('originalId', (v) => v as String),
          classification: $checkedConvert('classification', (v) => v as String),
          head: $checkedConvert(
              'head', (v) => TelegramHead.fromJson(v as Map<String, dynamic>)),
          receivedTime: $checkedConvert('receivedTime', (v) => v as String),
          xmlReport: $checkedConvert('xmlReport',
              (v) => TelegramReport.fromJson(v as Map<String, dynamic>)),
          schema: $checkedConvert('schema',
              (v) => TelegramSchema.fromJson(v as Map<String, dynamic>)),
          format: $checkedConvert('format', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EarthquakeTelegramImplToJson(
        _$EarthquakeTelegramImpl instance) =>
    <String, dynamic>{
      'serial': instance.serial,
      'id': instance.id,
      'originalId': instance.originalId,
      'classification': instance.classification,
      'head': instance.head,
      'receivedTime': instance.receivedTime,
      'xmlReport': instance.xmlReport,
      'schema': instance.schema,
      'format': instance.format,
      'url': instance.url,
    };

_$TelegramHeadImpl _$$TelegramHeadImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramHeadImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramHeadImpl(
          type: $checkedConvert('type', (v) => v as String),
          author: $checkedConvert('author', (v) => v as String),
          time: $checkedConvert('time', (v) => v as String),
          test: $checkedConvert('test', (v) => v as bool),
          designation: $checkedConvert('designation', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramHeadImplToJson(_$TelegramHeadImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'author': instance.author,
      'time': instance.time,
      'test': instance.test,
      'designation': instance.designation,
    };

_$TelegramReportImpl _$$TelegramReportImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramReportImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramReportImpl(
          head: $checkedConvert('head',
              (v) => TelegramReportHead.fromJson(v as Map<String, dynamic>)),
          control: $checkedConvert('control',
              (v) => TelegramReportControl.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramReportImplToJson(
        _$TelegramReportImpl instance) =>
    <String, dynamic>{
      'head': instance.head,
      'control': instance.control,
    };

_$TelegramReportHeadImpl _$$TelegramReportHeadImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramReportHeadImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramReportHeadImpl(
          title: $checkedConvert('title', (v) => v as String),
          serial: $checkedConvert('serial', (v) => v as String),
          eventId: $checkedConvert('eventId', (v) => v as String),
          headline: $checkedConvert('headline', (v) => v as String),
          infoKind: $checkedConvert('infoKind', (v) => v as String),
          infoType: $checkedConvert('infoType', (v) => v as String),
          reportDateTime: $checkedConvert('reportDateTime', (v) => v as String),
          targetDateTime: $checkedConvert('targetDateTime', (v) => v as String),
          infoKindVersion:
              $checkedConvert('infoKindVersion', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramReportHeadImplToJson(
        _$TelegramReportHeadImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'serial': instance.serial,
      'eventId': instance.eventId,
      'headline': instance.headline,
      'infoKind': instance.infoKind,
      'infoType': instance.infoType,
      'reportDateTime': instance.reportDateTime,
      'targetDateTime': instance.targetDateTime,
      'infoKindVersion': instance.infoKindVersion,
    };

_$TelegramReportControlImpl _$$TelegramReportControlImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramReportControlImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramReportControlImpl(
          title: $checkedConvert('title', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          dateTime: $checkedConvert('dateTime', (v) => v as String),
          editorialOffice:
              $checkedConvert('editorialOffice', (v) => v as String),
          publishingOffice:
              $checkedConvert('publishingOffice', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramReportControlImplToJson(
        _$TelegramReportControlImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'dateTime': instance.dateTime,
      'editorialOffice': instance.editorialOffice,
      'publishingOffice': instance.publishingOffice,
    };

_$TelegramSchemaImpl _$$TelegramSchemaImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramSchemaImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramSchemaImpl(
          type: $checkedConvert('type', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramSchemaImplToJson(
        _$TelegramSchemaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
    };
