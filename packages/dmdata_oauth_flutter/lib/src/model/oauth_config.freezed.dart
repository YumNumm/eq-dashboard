// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthConfig _$OAuthConfigFromJson(Map<String, dynamic> json) {
  return _OAuthConfig.fromJson(json);
}

/// @nodoc
mixin _$OAuthConfig {
  /// 認可エンドポイント
  String get authorizationEndpoint => throw _privateConstructorUsedError;

  /// トークンエンドポイント
  String get tokenEndpoint => throw _privateConstructorUsedError;

  /// 失効エンドポイント
  String get revokeEndpoint => throw _privateConstructorUsedError;

  /// クライアントID
  String get clientId => throw _privateConstructorUsedError;

  /// クライアントシークレット
  String? get clientSecret => throw _privateConstructorUsedError;

  /// リダイレクトURI
  String get redirectUri => throw _privateConstructorUsedError;

  /// 要求するスコープ
  List<String> get scopes => throw _privateConstructorUsedError;

  /// アクセストークンの更新期限
  /// デフォルトは1時間
  Duration get accessTokenExpiration => throw _privateConstructorUsedError;

  /// リフレッシュトークンの更新期限
  /// デフォルトは1週間
  Duration get refreshTokenExpiration => throw _privateConstructorUsedError;

  /// Serializes this OAuthConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthConfigCopyWith<OAuthConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthConfigCopyWith<$Res> {
  factory $OAuthConfigCopyWith(
          OAuthConfig value, $Res Function(OAuthConfig) then) =
      _$OAuthConfigCopyWithImpl<$Res, OAuthConfig>;
  @useResult
  $Res call(
      {String authorizationEndpoint,
      String tokenEndpoint,
      String revokeEndpoint,
      String clientId,
      String? clientSecret,
      String redirectUri,
      List<String> scopes,
      Duration accessTokenExpiration,
      Duration refreshTokenExpiration});
}

/// @nodoc
class _$OAuthConfigCopyWithImpl<$Res, $Val extends OAuthConfig>
    implements $OAuthConfigCopyWith<$Res> {
  _$OAuthConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? revokeEndpoint = null,
    Object? clientId = null,
    Object? clientSecret = freezed,
    Object? redirectUri = null,
    Object? scopes = null,
    Object? accessTokenExpiration = null,
    Object? refreshTokenExpiration = null,
  }) {
    return _then(_value.copyWith(
      authorizationEndpoint: null == authorizationEndpoint
          ? _value.authorizationEndpoint
          : authorizationEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: null == tokenEndpoint
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      revokeEndpoint: null == revokeEndpoint
          ? _value.revokeEndpoint
          : revokeEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessTokenExpiration: null == accessTokenExpiration
          ? _value.accessTokenExpiration
          : accessTokenExpiration // ignore: cast_nullable_to_non_nullable
              as Duration,
      refreshTokenExpiration: null == refreshTokenExpiration
          ? _value.refreshTokenExpiration
          : refreshTokenExpiration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthConfigImplCopyWith<$Res>
    implements $OAuthConfigCopyWith<$Res> {
  factory _$$OAuthConfigImplCopyWith(
          _$OAuthConfigImpl value, $Res Function(_$OAuthConfigImpl) then) =
      __$$OAuthConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorizationEndpoint,
      String tokenEndpoint,
      String revokeEndpoint,
      String clientId,
      String? clientSecret,
      String redirectUri,
      List<String> scopes,
      Duration accessTokenExpiration,
      Duration refreshTokenExpiration});
}

/// @nodoc
class __$$OAuthConfigImplCopyWithImpl<$Res>
    extends _$OAuthConfigCopyWithImpl<$Res, _$OAuthConfigImpl>
    implements _$$OAuthConfigImplCopyWith<$Res> {
  __$$OAuthConfigImplCopyWithImpl(
      _$OAuthConfigImpl _value, $Res Function(_$OAuthConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorizationEndpoint = null,
    Object? tokenEndpoint = null,
    Object? revokeEndpoint = null,
    Object? clientId = null,
    Object? clientSecret = freezed,
    Object? redirectUri = null,
    Object? scopes = null,
    Object? accessTokenExpiration = null,
    Object? refreshTokenExpiration = null,
  }) {
    return _then(_$OAuthConfigImpl(
      authorizationEndpoint: null == authorizationEndpoint
          ? _value.authorizationEndpoint
          : authorizationEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      tokenEndpoint: null == tokenEndpoint
          ? _value.tokenEndpoint
          : tokenEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      revokeEndpoint: null == revokeEndpoint
          ? _value.revokeEndpoint
          : revokeEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      scopes: null == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accessTokenExpiration: null == accessTokenExpiration
          ? _value.accessTokenExpiration
          : accessTokenExpiration // ignore: cast_nullable_to_non_nullable
              as Duration,
      refreshTokenExpiration: null == refreshTokenExpiration
          ? _value.refreshTokenExpiration
          : refreshTokenExpiration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthConfigImpl implements _OAuthConfig {
  const _$OAuthConfigImpl(
      {required this.authorizationEndpoint,
      required this.tokenEndpoint,
      required this.revokeEndpoint,
      required this.clientId,
      this.clientSecret,
      required this.redirectUri,
      required final List<String> scopes,
      this.accessTokenExpiration = const Duration(hours: 1),
      this.refreshTokenExpiration = const Duration(days: 7)})
      : _scopes = scopes;

  factory _$OAuthConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthConfigImplFromJson(json);

  /// 認可エンドポイント
  @override
  final String authorizationEndpoint;

  /// トークンエンドポイント
  @override
  final String tokenEndpoint;

  /// 失効エンドポイント
  @override
  final String revokeEndpoint;

  /// クライアントID
  @override
  final String clientId;

  /// クライアントシークレット
  @override
  final String? clientSecret;

  /// リダイレクトURI
  @override
  final String redirectUri;

  /// 要求するスコープ
  final List<String> _scopes;

  /// 要求するスコープ
  @override
  List<String> get scopes {
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scopes);
  }

  /// アクセストークンの更新期限
  /// デフォルトは1時間
  @override
  @JsonKey()
  final Duration accessTokenExpiration;

  /// リフレッシュトークンの更新期限
  /// デフォルトは1週間
  @override
  @JsonKey()
  final Duration refreshTokenExpiration;

  @override
  String toString() {
    return 'OAuthConfig(authorizationEndpoint: $authorizationEndpoint, tokenEndpoint: $tokenEndpoint, revokeEndpoint: $revokeEndpoint, clientId: $clientId, clientSecret: $clientSecret, redirectUri: $redirectUri, scopes: $scopes, accessTokenExpiration: $accessTokenExpiration, refreshTokenExpiration: $refreshTokenExpiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthConfigImpl &&
            (identical(other.authorizationEndpoint, authorizationEndpoint) ||
                other.authorizationEndpoint == authorizationEndpoint) &&
            (identical(other.tokenEndpoint, tokenEndpoint) ||
                other.tokenEndpoint == tokenEndpoint) &&
            (identical(other.revokeEndpoint, revokeEndpoint) ||
                other.revokeEndpoint == revokeEndpoint) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.accessTokenExpiration, accessTokenExpiration) ||
                other.accessTokenExpiration == accessTokenExpiration) &&
            (identical(other.refreshTokenExpiration, refreshTokenExpiration) ||
                other.refreshTokenExpiration == refreshTokenExpiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authorizationEndpoint,
      tokenEndpoint,
      revokeEndpoint,
      clientId,
      clientSecret,
      redirectUri,
      const DeepCollectionEquality().hash(_scopes),
      accessTokenExpiration,
      refreshTokenExpiration);

  /// Create a copy of OAuthConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthConfigImplCopyWith<_$OAuthConfigImpl> get copyWith =>
      __$$OAuthConfigImplCopyWithImpl<_$OAuthConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthConfigImplToJson(
      this,
    );
  }
}

abstract class _OAuthConfig implements OAuthConfig {
  const factory _OAuthConfig(
      {required final String authorizationEndpoint,
      required final String tokenEndpoint,
      required final String revokeEndpoint,
      required final String clientId,
      final String? clientSecret,
      required final String redirectUri,
      required final List<String> scopes,
      final Duration accessTokenExpiration,
      final Duration refreshTokenExpiration}) = _$OAuthConfigImpl;

  factory _OAuthConfig.fromJson(Map<String, dynamic> json) =
      _$OAuthConfigImpl.fromJson;

  /// 認可エンドポイント
  @override
  String get authorizationEndpoint;

  /// トークンエンドポイント
  @override
  String get tokenEndpoint;

  /// 失効エンドポイント
  @override
  String get revokeEndpoint;

  /// クライアントID
  @override
  String get clientId;

  /// クライアントシークレット
  @override
  String? get clientSecret;

  /// リダイレクトURI
  @override
  String get redirectUri;

  /// 要求するスコープ
  @override
  List<String> get scopes;

  /// アクセストークンの更新期限
  /// デフォルトは1時間
  @override
  Duration get accessTokenExpiration;

  /// リフレッシュトークンの更新期限
  /// デフォルトは1週間
  @override
  Duration get refreshTokenExpiration;

  /// Create a copy of OAuthConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthConfigImplCopyWith<_$OAuthConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
