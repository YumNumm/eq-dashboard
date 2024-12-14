// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'jmafile_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JmaFileListResponseImpl _$$JmaFileListResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaFileListResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaFileListResponseImpl(
          responseId: $checkedConvert('responseId', (v) => v as String),
          responseTime: $checkedConvert('responseTime', (v) => v as String),
          status: $checkedConvert('status', (v) => v as String),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      JmaFileListItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          nextPooling: $checkedConvert('nextPooling', (v) => v as String),
          nextPoolingInterval:
              $checkedConvert('nextPoolingInterval', (v) => (v as num).toInt()),
          nextToken: $checkedConvert('nextToken', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaFileListResponseImplToJson(
        _$JmaFileListResponseImpl instance) =>
    <String, dynamic>{
      'responseId': instance.responseId,
      'responseTime': instance.responseTime,
      'status': instance.status,
      'items': instance.items,
      'nextPooling': instance.nextPooling,
      'nextPoolingInterval': instance.nextPoolingInterval,
      'nextToken': instance.nextToken,
    };

_$JmaFileListItemImpl _$$JmaFileListItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaFileListItemImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaFileListItemImpl(
          serial: $checkedConvert('serial', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          classification: $checkedConvert('classification', (v) => v as String),
          headers: $checkedConvert(
              'headers',
              (v) => (v as List<dynamic>)
                  .map((e) => JmaFileHeader.fromJson(e as Map<String, dynamic>))
                  .toList()),
          receivedTime: $checkedConvert('receivedTime', (v) => v as String),
          format: $checkedConvert('format', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          compression: $checkedConvert('compression', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaFileListItemImplToJson(
        _$JmaFileListItemImpl instance) =>
    <String, dynamic>{
      'serial': instance.serial,
      'id': instance.id,
      'classification': instance.classification,
      'headers': instance.headers,
      'receivedTime': instance.receivedTime,
      'format': instance.format,
      'url': instance.url,
      'compression': instance.compression,
    };

_$JmaFileHeaderImpl _$$JmaFileHeaderImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaFileHeaderImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaFileHeaderImpl(
          time: $checkedConvert('time', (v) => v as String),
          flags: $checkedConvert(
              'flags', (v) => JmaFileFlags.fromJson(v as Map<String, dynamic>)),
          author: $checkedConvert('author', (v) => v as String),
          format: $checkedConvert('format', (v) => v as String),
          length: $checkedConvert('length', (v) => (v as num).toInt()),
          values: $checkedConvert('values',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          filename: $checkedConvert('filename', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaFileHeaderImplToJson(_$JmaFileHeaderImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'flags': instance.flags,
      'author': instance.author,
      'format': instance.format,
      'length': instance.length,
      'values': instance.values,
      'filename': instance.filename,
    };

_$JmaFileFlagsImpl _$$JmaFileFlagsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JmaFileFlagsImpl',
      json,
      ($checkedConvert) {
        final val = _$JmaFileFlagsImpl(
          product: $checkedConvert('product', (v) => v as String),
          oflag: $checkedConvert('oflag', (v) => v as String),
          productidentifier:
              $checkedConvert('productidentifier', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$JmaFileFlagsImplToJson(_$JmaFileFlagsImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'oflag': instance.oflag,
      'productidentifier': instance.productidentifier,
    };
