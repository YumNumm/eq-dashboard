// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'eew_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EewEventResponseImpl _$$EewEventResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewEventResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$EewEventResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => EewEventItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewEventResponseImplToJson(
        _$EewEventResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
    };

_$EewEventItemImpl _$$EewEventItemImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewEventItemImpl',
      json,
      ($checkedConvert) {
        final val = _$EewEventItemImpl(
          id: $checkedConvert('id', (v) => v),
          eventId: $checkedConvert('eventId', (v) => v as String),
          serial: $checkedConvert('serial', (v) => (v as num).toInt()),
          dateTime: $checkedConvert('dateTime', (v) => v as String),
          isLastInfo: $checkedConvert('isLastInfo', (v) => v as bool),
          isCanceled: $checkedConvert('isCanceled', (v) => v as bool),
          telegrams: $checkedConvert(
              'telegrams',
              (v) => (v as List<dynamic>)
                  .map((e) => EewTelegram.fromJson(e as Map<String, dynamic>))
                  .toList()),
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

Map<String, dynamic> _$$EewEventItemImplToJson(_$EewEventItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'serial': instance.serial,
      'dateTime': instance.dateTime,
      'isLastInfo': instance.isLastInfo,
      'isCanceled': instance.isCanceled,
      'telegrams': instance.telegrams,
      'isWarning': instance.isWarning,
      'earthquake': instance.earthquake,
      'intensity': instance.intensity,
      'text': instance.text,
    };

_$EewTelegramImpl _$$EewTelegramImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EewTelegramImpl',
      json,
      ($checkedConvert) {
        final val = _$EewTelegramImpl(
          serial: $checkedConvert('serial', (v) => v),
          id: $checkedConvert('id', (v) => v as String),
          originalId: $checkedConvert('originalId', (v) => v as String),
          classification: $checkedConvert('classification', (v) => v as String),
          head: $checkedConvert(
              'head', (v) => TelegramHead.fromJson(v as Map<String, dynamic>)),
          receivedTime: $checkedConvert('receivedTime', (v) => v as String),
          xmlReport: $checkedConvert('xmlReport',
              (v) => XmlReport.fromJson(v as Map<String, dynamic>)),
          schema: $checkedConvert(
              'schema', (v) => Schema.fromJson(v as Map<String, dynamic>)),
          format: $checkedConvert('format', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EewTelegramImplToJson(_$EewTelegramImpl instance) =>
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

_$XmlReportImpl _$$XmlReportImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$XmlReportImpl',
      json,
      ($checkedConvert) {
        final val = _$XmlReportImpl(
          control: $checkedConvert(
              'control', (v) => Control.fromJson(v as Map<String, dynamic>)),
          head: $checkedConvert(
              'head', (v) => Head.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$XmlReportImplToJson(_$XmlReportImpl instance) =>
    <String, dynamic>{
      'control': instance.control,
      'head': instance.head,
    };

_$ControlImpl _$$ControlImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ControlImpl',
      json,
      ($checkedConvert) {
        final val = _$ControlImpl(
          title: $checkedConvert('title', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          editorialOffice:
              $checkedConvert('editorialOffice', (v) => v as String),
          publishingOffice:
              $checkedConvert('publishingOffice', (v) => v as String),
          dateTime: $checkedConvert('dateTime', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ControlImplToJson(_$ControlImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'editorialOffice': instance.editorialOffice,
      'publishingOffice': instance.publishingOffice,
      'dateTime': instance.dateTime,
    };

_$HeadImpl _$$HeadImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$HeadImpl',
      json,
      ($checkedConvert) {
        final val = _$HeadImpl(
          title: $checkedConvert('title', (v) => v as String),
          infoType: $checkedConvert('infoType', (v) => v as String),
          infoKind: $checkedConvert('infoKind', (v) => v as String),
          infoKindVersion:
              $checkedConvert('infoKindVersion', (v) => v as String),
          reportDateTime: $checkedConvert('reportDateTime', (v) => v as String),
          targetDateTime: $checkedConvert('targetDateTime', (v) => v as String),
          serial: $checkedConvert('serial', (v) => v as String?),
          headline: $checkedConvert('headline', (v) => v as String?),
          eventId: $checkedConvert('eventId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HeadImplToJson(_$HeadImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'infoType': instance.infoType,
      'infoKind': instance.infoKind,
      'infoKindVersion': instance.infoKindVersion,
      'reportDateTime': instance.reportDateTime,
      'targetDateTime': instance.targetDateTime,
      'serial': instance.serial,
      'headline': instance.headline,
      'eventId': instance.eventId,
    };

_$SchemaImpl _$$SchemaImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$SchemaImpl',
      json,
      ($checkedConvert) {
        final val = _$SchemaImpl(
          type: $checkedConvert('type', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SchemaImplToJson(_$SchemaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
    };
