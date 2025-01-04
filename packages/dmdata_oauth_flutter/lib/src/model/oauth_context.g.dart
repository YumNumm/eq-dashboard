// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'oauth_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OAuthContextImpl _$$OAuthContextImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$OAuthContextImpl',
      json,
      ($checkedConvert) {
        final val = _$OAuthContextImpl(
          state: $checkedConvert('state', (v) => v as String),
          codeChallenge: $checkedConvert('code_challenge', (v) => v as String?),
          codeChallengeMethod: $checkedConvert('code_challenge_method',
              (v) => $enumDecode(_$CodeChallengeMethodEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'codeChallenge': 'code_challenge',
        'codeChallengeMethod': 'code_challenge_method'
      },
    );

Map<String, dynamic> _$$OAuthContextImplToJson(_$OAuthContextImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'code_challenge': instance.codeChallenge,
      'code_challenge_method':
          _$CodeChallengeMethodEnumMap[instance.codeChallengeMethod]!,
    };

const _$CodeChallengeMethodEnumMap = {
  CodeChallengeMethod.s256: 's256',
  CodeChallengeMethod.plain: 'plain',
};
