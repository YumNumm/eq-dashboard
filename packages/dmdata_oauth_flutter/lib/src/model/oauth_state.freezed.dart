// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthState _$OAuthStateFromJson(Map<String, dynamic> json) {
  return _OAuthState.fromJson(json);
}

/// @nodoc
mixin _$OAuthState {
  /// アクセストークン
  String get accessToken => throw _privateConstructorUsedError;

  /// リフレッシュトークン
  String get refreshToken => throw _privateConstructorUsedError;

  /// アクセストークンの有効期限
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// 付与されたスコープ
  String get scope => throw _privateConstructorUsedError;

  /// Serializes this OAuthState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthStateCopyWith<OAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthStateCopyWith<$Res> {
  factory $OAuthStateCopyWith(
          OAuthState value, $Res Function(OAuthState) then) =
      _$OAuthStateCopyWithImpl<$Res, OAuthState>;
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      DateTime expiresAt,
      String scope});
}

/// @nodoc
class _$OAuthStateCopyWithImpl<$Res, $Val extends OAuthState>
    implements $OAuthStateCopyWith<$Res> {
  _$OAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? scope = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthStateImplCopyWith<$Res>
    implements $OAuthStateCopyWith<$Res> {
  factory _$$OAuthStateImplCopyWith(
          _$OAuthStateImpl value, $Res Function(_$OAuthStateImpl) then) =
      __$$OAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String refreshToken,
      DateTime expiresAt,
      String scope});
}

/// @nodoc
class __$$OAuthStateImplCopyWithImpl<$Res>
    extends _$OAuthStateCopyWithImpl<$Res, _$OAuthStateImpl>
    implements _$$OAuthStateImplCopyWith<$Res> {
  __$$OAuthStateImplCopyWithImpl(
      _$OAuthStateImpl _value, $Res Function(_$OAuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? expiresAt = null,
    Object? scope = null,
  }) {
    return _then(_$OAuthStateImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthStateImpl implements _OAuthState {
  const _$OAuthStateImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.expiresAt,
      required this.scope});

  factory _$OAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthStateImplFromJson(json);

  /// アクセストークン
  @override
  final String accessToken;

  /// リフレッシュトークン
  @override
  final String refreshToken;

  /// アクセストークンの有効期限
  @override
  final DateTime expiresAt;

  /// 付与されたスコープ
  @override
  final String scope;

  @override
  String toString() {
    return 'OAuthState(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt, scope: $scope)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthStateImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.scope, scope) || other.scope == scope));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresAt, scope);

  /// Create a copy of OAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthStateImplCopyWith<_$OAuthStateImpl> get copyWith =>
      __$$OAuthStateImplCopyWithImpl<_$OAuthStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthStateImplToJson(
      this,
    );
  }
}

abstract class _OAuthState implements OAuthState {
  const factory _OAuthState(
      {required final String accessToken,
      required final String refreshToken,
      required final DateTime expiresAt,
      required final String scope}) = _$OAuthStateImpl;

  factory _OAuthState.fromJson(Map<String, dynamic> json) =
      _$OAuthStateImpl.fromJson;

  /// アクセストークン
  @override
  String get accessToken;

  /// リフレッシュトークン
  @override
  String get refreshToken;

  /// アクセストークンの有効期限
  @override
  DateTime get expiresAt;

  /// 付与されたスコープ
  @override
  String get scope;

  /// Create a copy of OAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthStateImplCopyWith<_$OAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
