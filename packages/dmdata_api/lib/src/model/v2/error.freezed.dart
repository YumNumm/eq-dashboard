// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DMMError _$DMMErrorFromJson(Map<String, dynamic> json) {
  return _DMMError.fromJson(json);
}

/// @nodoc
mixin _$DMMError {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this DMMError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DMMError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DMMErrorCopyWith<DMMError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DMMErrorCopyWith<$Res> {
  factory $DMMErrorCopyWith(DMMError value, $Res Function(DMMError) then) =
      _$DMMErrorCopyWithImpl<$Res, DMMError>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$DMMErrorCopyWithImpl<$Res, $Val extends DMMError>
    implements $DMMErrorCopyWith<$Res> {
  _$DMMErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DMMError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DMMErrorImplCopyWith<$Res>
    implements $DMMErrorCopyWith<$Res> {
  factory _$$DMMErrorImplCopyWith(
          _$DMMErrorImpl value, $Res Function(_$DMMErrorImpl) then) =
      __$$DMMErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$DMMErrorImplCopyWithImpl<$Res>
    extends _$DMMErrorCopyWithImpl<$Res, _$DMMErrorImpl>
    implements _$$DMMErrorImplCopyWith<$Res> {
  __$$DMMErrorImplCopyWithImpl(
      _$DMMErrorImpl _value, $Res Function(_$DMMErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DMMError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$DMMErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DMMErrorImpl implements _DMMError {
  const _$DMMErrorImpl({required this.message, required this.code});

  factory _$DMMErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DMMErrorImplFromJson(json);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'DMMError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DMMErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of DMMError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DMMErrorImplCopyWith<_$DMMErrorImpl> get copyWith =>
      __$$DMMErrorImplCopyWithImpl<_$DMMErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DMMErrorImplToJson(
      this,
    );
  }
}

abstract class _DMMError implements DMMError {
  const factory _DMMError(
      {required final String message,
      required final int code}) = _$DMMErrorImpl;

  factory _DMMError.fromJson(Map<String, dynamic> json) =
      _$DMMErrorImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of DMMError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DMMErrorImplCopyWith<_$DMMErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
