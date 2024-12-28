// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OAuthContext _$OAuthContextFromJson(Map<String, dynamic> json) {
  return _OAuthContext.fromJson(json);
}

/// @nodoc
mixin _$OAuthContext {
  /// CSRF対策のためのstate
  @Assert('state.length <= 64', 'state must be less than or equal to 64 bytes')
  String get state => throw _privateConstructorUsedError;

  /// コードチャレンジ
  String? get codeChallenge => throw _privateConstructorUsedError;

  /// コードチャレンジメソッド
  CodeChallengeMethod get codeChallengeMethod =>
      throw _privateConstructorUsedError;

  /// Serializes this OAuthContext to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OAuthContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OAuthContextCopyWith<OAuthContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OAuthContextCopyWith<$Res> {
  factory $OAuthContextCopyWith(
          OAuthContext value, $Res Function(OAuthContext) then) =
      _$OAuthContextCopyWithImpl<$Res, OAuthContext>;
  @useResult
  $Res call(
      {@Assert(
          'state.length <= 64', 'state must be less than or equal to 64 bytes')
      String state,
      String? codeChallenge,
      CodeChallengeMethod codeChallengeMethod});
}

/// @nodoc
class _$OAuthContextCopyWithImpl<$Res, $Val extends OAuthContext>
    implements $OAuthContextCopyWith<$Res> {
  _$OAuthContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OAuthContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? codeChallenge = freezed,
    Object? codeChallengeMethod = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      codeChallenge: freezed == codeChallenge
          ? _value.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: null == codeChallengeMethod
          ? _value.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as CodeChallengeMethod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OAuthContextImplCopyWith<$Res>
    implements $OAuthContextCopyWith<$Res> {
  factory _$$OAuthContextImplCopyWith(
          _$OAuthContextImpl value, $Res Function(_$OAuthContextImpl) then) =
      __$$OAuthContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert(
          'state.length <= 64', 'state must be less than or equal to 64 bytes')
      String state,
      String? codeChallenge,
      CodeChallengeMethod codeChallengeMethod});
}

/// @nodoc
class __$$OAuthContextImplCopyWithImpl<$Res>
    extends _$OAuthContextCopyWithImpl<$Res, _$OAuthContextImpl>
    implements _$$OAuthContextImplCopyWith<$Res> {
  __$$OAuthContextImplCopyWithImpl(
      _$OAuthContextImpl _value, $Res Function(_$OAuthContextImpl) _then)
      : super(_value, _then);

  /// Create a copy of OAuthContext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? codeChallenge = freezed,
    Object? codeChallengeMethod = null,
  }) {
    return _then(_$OAuthContextImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      codeChallenge: freezed == codeChallenge
          ? _value.codeChallenge
          : codeChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      codeChallengeMethod: null == codeChallengeMethod
          ? _value.codeChallengeMethod
          : codeChallengeMethod // ignore: cast_nullable_to_non_nullable
              as CodeChallengeMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OAuthContextImpl implements _OAuthContext {
  const _$OAuthContextImpl(
      {@Assert(
          'state.length <= 64', 'state must be less than or equal to 64 bytes')
      required this.state,
      required this.codeChallenge,
      required this.codeChallengeMethod});

  factory _$OAuthContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$OAuthContextImplFromJson(json);

  /// CSRF対策のためのstate
  @override
  @Assert('state.length <= 64', 'state must be less than or equal to 64 bytes')
  final String state;

  /// コードチャレンジ
  @override
  final String? codeChallenge;

  /// コードチャレンジメソッド
  @override
  final CodeChallengeMethod codeChallengeMethod;

  @override
  String toString() {
    return 'OAuthContext._(state: $state, codeChallenge: $codeChallenge, codeChallengeMethod: $codeChallengeMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OAuthContextImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.codeChallenge, codeChallenge) ||
                other.codeChallenge == codeChallenge) &&
            (identical(other.codeChallengeMethod, codeChallengeMethod) ||
                other.codeChallengeMethod == codeChallengeMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, codeChallenge, codeChallengeMethod);

  /// Create a copy of OAuthContext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OAuthContextImplCopyWith<_$OAuthContextImpl> get copyWith =>
      __$$OAuthContextImplCopyWithImpl<_$OAuthContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OAuthContextImplToJson(
      this,
    );
  }
}

abstract class _OAuthContext implements OAuthContext {
  const factory _OAuthContext(
          {@Assert('state.length <= 64',
              'state must be less than or equal to 64 bytes')
          required final String state,
          required final String? codeChallenge,
          required final CodeChallengeMethod codeChallengeMethod}) =
      _$OAuthContextImpl;

  factory _OAuthContext.fromJson(Map<String, dynamic> json) =
      _$OAuthContextImpl.fromJson;

  /// CSRF対策のためのstate
  @override
  @Assert('state.length <= 64', 'state must be less than or equal to 64 bytes')
  String get state;

  /// コードチャレンジ
  @override
  String? get codeChallenge;

  /// コードチャレンジメソッド
  @override
  CodeChallengeMethod get codeChallengeMethod;

  /// Create a copy of OAuthContext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OAuthContextImplCopyWith<_$OAuthContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
