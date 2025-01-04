// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'oauth_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthErrorResponseImpl _$$OAuthErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OAuthErrorResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$OAuthErrorResponseImpl(
          error: $checkedConvert('error', (v) => v as String),
          errorDescription:
              $checkedConvert('error_description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'errorDescription': 'error_description'},
    );

Map<String, dynamic> _$$OAuthErrorResponseImplToJson(
        _$OAuthErrorResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_description': instance.errorDescription,
    };
