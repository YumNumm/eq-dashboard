// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'telegram_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelegramListResponseImpl _$$TelegramListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      TelegramListItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextPooling: $checkedConvert('nextPooling', (v) => v as String),
          nextPoolingInterval:
              $checkedConvert('nextPoolingInterval', (v) => (v as num).toInt()),
          nextToken: $checkedConvert('nextToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramListResponseImplToJson(
        _$TelegramListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'nextPooling': instance.nextPooling,
      'nextPoolingInterval': instance.nextPoolingInterval,
      'nextToken': instance.nextToken,
    };

_$TelegramListItemImpl _$$TelegramListItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TelegramListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$TelegramListItemImpl(
          serial: $checkedConvert('serial', (v) => v),
          classification: $checkedConvert('classification', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          head: $checkedConvert(
              'head', (v) => TelegramHead.fromJson(v as Map<String, dynamic>)),
          receivedTime: $checkedConvert('receivedTime', (v) => v as String),
          format: $checkedConvert('format', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          xmlReport: $checkedConvert(
              'xmlReport',
              (v) => v == null
                  ? null
                  : XmlReport.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TelegramListItemImplToJson(
        _$TelegramListItemImpl instance) =>
    <String, dynamic>{
      'serial': instance.serial,
      'classification': instance.classification,
      'id': instance.id,
      'head': instance.head,
      'receivedTime': instance.receivedTime,
      'format': instance.format,
      'url': instance.url,
      'xmlReport': instance.xmlReport,
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
          target: $checkedConvert('target', (v) => v as String?),
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
      'target': instance.target,
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