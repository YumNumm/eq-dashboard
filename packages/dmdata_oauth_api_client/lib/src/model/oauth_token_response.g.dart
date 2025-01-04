// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'oauth_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthTokenResponseImpl _$$OAuthTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OAuthTokenResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$OAuthTokenResponseImpl(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          tokenType: $checkedConvert('token_type', (v) => v as String),
          expiresIn: $checkedConvert('expires_in', (v) => (v as num).toInt()),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String?),
          scope: $checkedConvert('scope', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'tokenType': 'token_type',
        'expiresIn': 'expires_in',
        'refreshToken': 'refresh_token'
      },
    );

Map<String, dynamic> _$$OAuthTokenResponseImplToJson(
        _$OAuthTokenResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
    };
