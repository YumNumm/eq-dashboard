// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'websocket_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebSocketStartMessageImpl _$$WebSocketStartMessageImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketStartMessageImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketStartMessageImpl(
          socketId: $checkedConvert('socketId', (v) => (v as num).toInt()),
          test: $checkedConvert('test', (v) => v as String),
          formats: $checkedConvert('formats',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          time: $checkedConvert('time', (v) => DateTime.parse(v as String)),
          type: $checkedConvert('type', (v) => v as String?),
          classifications: $checkedConvert('classifications',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          types: $checkedConvert('types',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          appName: $checkedConvert('appName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketStartMessageImplToJson(
        _$WebSocketStartMessageImpl instance) =>
    <String, dynamic>{
      'socketId': instance.socketId,
      'test': instance.test,
      'formats': instance.formats,
      'time': instance.time.toIso8601String(),
      'type': instance.type,
      'classifications': instance.classifications,
      'types': instance.types,
      'appName': instance.appName,
    };

_$WebSocketPingMessageImpl _$$WebSocketPingMessageImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketPingMessageImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketPingMessageImpl(
          type: $checkedConvert('type', (v) => v as String),
          pingId: $checkedConvert('pingId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketPingMessageImplToJson(
        _$WebSocketPingMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'pingId': instance.pingId,
    };

_$WebSocketPongMessageImpl _$$WebSocketPongMessageImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketPongMessageImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketPongMessageImpl(
          type: $checkedConvert('type', (v) => v as String),
          pingId: $checkedConvert('pingId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketPongMessageImplToJson(
        _$WebSocketPongMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'pingId': instance.pingId,
    };

_$WebSocketDataMessageImpl _$$WebSocketDataMessageImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketDataMessageImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketDataMessageImpl(
          type: $checkedConvert('type', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
          classification: $checkedConvert('classification', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          passing: $checkedConvert(
              'passing',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      WebSocketPassing.fromJson(e as Map<String, dynamic>))
                  .toList()),
          head: $checkedConvert(
              'head', (v) => WebSocketHead.fromJson(v as Map<String, dynamic>)),
          format: $checkedConvert('format', (v) => v as String),
          encoding: $checkedConvert('encoding', (v) => v as String),
          body: $checkedConvert('body', (v) => v as String),
          xmlReport: $checkedConvert(
              'xmlReport',
              (v) => v == null
                  ? null
                  : WebSocketXmlReport.fromJson(v as Map<String, dynamic>)),
          compression: $checkedConvert('compression', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketDataMessageImplToJson(
        _$WebSocketDataMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
      'classification': instance.classification,
      'id': instance.id,
      'passing': instance.passing,
      'head': instance.head,
      'format': instance.format,
      'encoding': instance.encoding,
      'body': instance.body,
      'xmlReport': instance.xmlReport,
      'compression': instance.compression,
    };

_$WebSocketErrorMessageImpl _$$WebSocketErrorMessageImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketErrorMessageImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketErrorMessageImpl(
          type: $checkedConvert('type', (v) => v as String),
          error: $checkedConvert('error', (v) => v as String),
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          close: $checkedConvert('close', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketErrorMessageImplToJson(
        _$WebSocketErrorMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'error': instance.error,
      'code': instance.code,
      'close': instance.close,
    };

_$WebSocketPassingImpl _$$WebSocketPassingImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketPassingImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketPassingImpl(
          name: $checkedConvert('name', (v) => v as String),
          time: $checkedConvert('time', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketPassingImplToJson(
        _$WebSocketPassingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
    };

_$WebSocketHeadImpl _$$WebSocketHeadImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketHeadImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketHeadImpl(
          type: $checkedConvert('type', (v) => v as String),
          author: $checkedConvert('author', (v) => v as String),
          time: $checkedConvert('time', (v) => v as String),
          test: $checkedConvert('test', (v) => v as bool),
          target: $checkedConvert('target', (v) => v as String?),
          designation: $checkedConvert('designation', (v) => v as String?),
          xml: $checkedConvert('xml', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketHeadImplToJson(_$WebSocketHeadImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'author': instance.author,
      'time': instance.time,
      'test': instance.test,
      'target': instance.target,
      'designation': instance.designation,
      'xml': instance.xml,
    };

_$WebSocketXmlReportImpl _$$WebSocketXmlReportImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketXmlReportImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketXmlReportImpl(
          control: $checkedConvert('control',
              (v) => WebSocketControl.fromJson(v as Map<String, dynamic>)),
          head: $checkedConvert(
              'head', (v) => WebSocketHead.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketXmlReportImplToJson(
        _$WebSocketXmlReportImpl instance) =>
    <String, dynamic>{
      'control': instance.control,
      'head': instance.head,
    };

_$WebSocketControlImpl _$$WebSocketControlImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketControlImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketControlImpl(
          title: $checkedConvert('title', (v) => v as String),
          dateTime: $checkedConvert('dateTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          editorialOffice:
              $checkedConvert('editorialOffice', (v) => v as String),
          publishingOffice:
              $checkedConvert('publishingOffice', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketControlImplToJson(
        _$WebSocketControlImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'dateTime': instance.dateTime,
      'status': instance.status,
      'editorialOffice': instance.editorialOffice,
      'publishingOffice': instance.publishingOffice,
    };

_$WebSocketReportHeadImpl _$$WebSocketReportHeadImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WebSocketReportHeadImpl',
      json,
      ($checkedConvert) {
        final val = _$WebSocketReportHeadImpl(
          title: $checkedConvert('title', (v) => v as String),
          reportDateTime: $checkedConvert('reportDateTime', (v) => v as String),
          targetDateTime: $checkedConvert('targetDateTime', (v) => v as String),
          infoType: $checkedConvert('infoType', (v) => v as String),
          infoKind: $checkedConvert('infoKind', (v) => v as String),
          infoKindVersion:
              $checkedConvert('infoKindVersion', (v) => v as String),
          eventId: $checkedConvert('eventId', (v) => v as String?),
          serial: $checkedConvert('serial', (v) => v as String?),
          headline: $checkedConvert('headline', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$WebSocketReportHeadImplToJson(
        _$WebSocketReportHeadImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'reportDateTime': instance.reportDateTime,
      'targetDateTime': instance.targetDateTime,
      'infoType': instance.infoType,
      'infoKind': instance.infoKind,
      'infoKindVersion': instance.infoKindVersion,
      'eventId': instance.eventId,
      'serial': instance.serial,
      'headline': instance.headline,
    };
