// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'oauth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthStateImpl _$$OAuthStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OAuthStateImpl',
      json,
      ($checkedConvert) {
        final val = _$OAuthStateImpl(
          accessToken: $checkedConvert('access_token', (v) => v as String),
          refreshToken: $checkedConvert('refresh_token', (v) => v as String),
          expiresAt:
              $checkedConvert('expires_at', (v) => DateTime.parse(v as String)),
          refreshTokenExpiresAt: $checkedConvert(
              'refresh_token_expires_at', (v) => DateTime.parse(v as String)),
          scopes: $checkedConvert('scopes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token',
        'expiresAt': 'expires_at',
        'refreshTokenExpiresAt': 'refresh_token_expires_at'
      },
    );

Map<String, dynamic> _$$OAuthStateImplToJson(_$OAuthStateImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_at': instance.expiresAt.toIso8601String(),
      'refresh_token_expires_at':
          instance.refreshTokenExpiresAt.toIso8601String(),
      'scopes': instance.scopes,
    };
