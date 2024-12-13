// GENERATED CODE - DO NOT MODIFY BY HAND

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
          scope: $checkedConvert('scope', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'refreshToken': 'refresh_token',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$$OAuthStateImplToJson(_$OAuthStateImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_at': instance.expiresAt.toIso8601String(),
      'scope': instance.scope,
    };
