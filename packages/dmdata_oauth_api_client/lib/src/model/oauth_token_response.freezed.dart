// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthTokenResponse _$OAuthTokenResponseFromJson(Map<String, dynamic> json) {
  return _OAuthTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$OAuthTokenResponse {
  /// アクセストークン (ATn.で始まる)
  String get accessToken => throw _privateConstructorUsedError;

  /// トークンタイプ (Bearer固定)
  String get tokenType => throw _privateConstructorUsedError;

  /// アクセストークンの有効期間（秒）
  int get expiresIn => throw _privateConstructorUsedError;

  /// リフレッシュトークン (ARh.で始まる)
  String? get refreshToken => throw _privateConstructorUsedError;

  /// 付与されたスコープ（スペース区切り）
  String? get scope => throw _privateConstructorUsedError;

  /// Serializes this OAuthTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthTokenResponseCopyWith<OAuthTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthTokenResponseCopyWith<$Res> {
  factory $OAuthTokenResponseCopyWith(
          OAuthTokenResponse value, $Res Function(OAuthTokenResponse) then) =
      _$OAuthTokenResponseCopyWithImpl<$Res, OAuthTokenResponse>;
  @useResult
  $Res call(
      {String accessToken,
      String tokenType,
      int expiresIn,
      String? refreshToken,
      String? scope});
}

/// @nodoc
class _$OAuthTokenResponseCopyWithImpl<$Res, $Val extends OAuthTokenResponse>
    implements $OAuthTokenResponseCopyWith<$Res> {
  _$OAuthTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthTokenResponseImplCopyWith<$Res>
    implements $OAuthTokenResponseCopyWith<$Res> {
  factory _$$OAuthTokenResponseImplCopyWith(_$OAuthTokenResponseImpl value,
          $Res Function(_$OAuthTokenResponseImpl) then) =
      __$$OAuthTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String tokenType,
      int expiresIn,
      String? refreshToken,
      String? scope});
}

/// @nodoc
class __$$OAuthTokenResponseImplCopyWithImpl<$Res>
    extends _$OAuthTokenResponseCopyWithImpl<$Res, _$OAuthTokenResponseImpl>
    implements _$$OAuthTokenResponseImplCopyWith<$Res> {
  __$$OAuthTokenResponseImplCopyWithImpl(_$OAuthTokenResponseImpl _value,
      $Res Function(_$OAuthTokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
    Object? expiresIn = null,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_$OAuthTokenResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      scope: freezed == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthTokenResponseImpl implements _OAuthTokenResponse {
  const _$OAuthTokenResponseImpl(
      {required this.accessToken,
      required this.tokenType,
      required this.expiresIn,
      this.refreshToken,
      this.scope});

  factory _$OAuthTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthTokenResponseImplFromJson(json);

  /// アクセストークン (ATn.で始まる)
  @override
  final String accessToken;

  /// トークンタイプ (Bearer固定)
  @override
  final String tokenType;

  /// アクセストークンの有効期間（秒）
  @override
  final int expiresIn;

  /// リフレッシュトークン (ARh.で始まる)
  @override
  final String? refreshToken;

  /// 付与されたスコープ（スペース区切り）
  @override
  final String? scope;

  @override
  String toString() {
    return 'OAuthTokenResponse(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthTokenResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, tokenType, expiresIn, refreshToken, scope);

  /// Create a copy of OAuthTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthTokenResponseImplCopyWith<_$OAuthTokenResponseImpl> get copyWith =>
      __$$OAuthTokenResponseImplCopyWithImpl<_$OAuthTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _OAuthTokenResponse implements OAuthTokenResponse {
  const factory _OAuthTokenResponse(
      {required final String accessToken,
      required final String tokenType,
      required final int expiresIn,
      final String? refreshToken,
      final String? scope}) = _$OAuthTokenResponseImpl;

  factory _OAuthTokenResponse.fromJson(Map<String, dynamic> json) =
      _$OAuthTokenResponseImpl.fromJson;

  /// アクセストークン (ATn.で始まる)
  @override
  String get accessToken;

  /// トークンタイプ (Bearer固定)
  @override
  String get tokenType;

  /// アクセストークンの有効期間（秒）
  @override
  int get expiresIn;

  /// リフレッシュトークン (ARh.で始まる)
  @override
  String? get refreshToken;

  /// 付与されたスコープ（スペース区切り）
  @override
  String? get scope;

  /// Create a copy of OAuthTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthTokenResponseImplCopyWith<_$OAuthTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
