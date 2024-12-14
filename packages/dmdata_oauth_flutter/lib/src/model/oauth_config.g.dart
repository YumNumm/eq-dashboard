// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthConfigImpl _$$OAuthConfigImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OAuthConfigImpl',
      json,
      ($checkedConvert) {
        final val = _$OAuthConfigImpl(
          authorizationEndpoint:
              $checkedConvert('authorization_endpoint', (v) => v as String),
          tokenEndpoint: $checkedConvert('token_endpoint', (v) => v as String),
          revokeEndpoint:
              $checkedConvert('revoke_endpoint', (v) => v as String),
          clientId: $checkedConvert('client_id', (v) => v as String),
          clientSecret: $checkedConvert('client_secret', (v) => v as String?),
          redirectUri: $checkedConvert('redirect_uri', (v) => v as String),
          scopes: $checkedConvert('scopes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          accessTokenExpiration: $checkedConvert(
              'access_token_expiration',
              (v) => v == null
                  ? const Duration(hours: 1)
                  : Duration(microseconds: (v as num).toInt())),
          refreshTokenExpiration: $checkedConvert(
              'refresh_token_expiration',
              (v) => v == null
                  ? const Duration(days: 7)
                  : Duration(microseconds: (v as num).toInt())),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorizationEndpoint': 'authorization_endpoint',
        'tokenEndpoint': 'token_endpoint',
        'revokeEndpoint': 'revoke_endpoint',
        'clientId': 'client_id',
        'clientSecret': 'client_secret',
        'redirectUri': 'redirect_uri',
        'accessTokenExpiration': 'access_token_expiration',
        'refreshTokenExpiration': 'refresh_token_expiration'
      },
    );

Map<String, dynamic> _$$OAuthConfigImplToJson(_$OAuthConfigImpl instance) =>
    <String, dynamic>{
      'authorization_endpoint': instance.authorizationEndpoint,
      'token_endpoint': instance.tokenEndpoint,
      'revoke_endpoint': instance.revokeEndpoint,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'redirect_uri': instance.redirectUri,
      'scopes': instance.scopes,
      'access_token_expiration': instance.accessTokenExpiration.inMicroseconds,
      'refresh_token_expiration':
          instance.refreshTokenExpiration.inMicroseconds,
    };
