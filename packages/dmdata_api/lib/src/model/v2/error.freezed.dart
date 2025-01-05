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

DmDataError _$DmDataErrorFromJson(Map<String, dynamic> json) {
  return _DmDataError.fromJson(json);
}

/// @nodoc
mixin _$DmDataError {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this DmDataError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmDataError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmDataErrorCopyWith<DmDataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmDataErrorCopyWith<$Res> {
  factory $DmDataErrorCopyWith(
          DmDataError value, $Res Function(DmDataError) then) =
      _$DmDataErrorCopyWithImpl<$Res, DmDataError>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$DmDataErrorCopyWithImpl<$Res, $Val extends DmDataError>
    implements $DmDataErrorCopyWith<$Res> {
  _$DmDataErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmDataError
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
abstract class _$$DmDataErrorImplCopyWith<$Res>
    implements $DmDataErrorCopyWith<$Res> {
  factory _$$DmDataErrorImplCopyWith(
          _$DmDataErrorImpl value, $Res Function(_$DmDataErrorImpl) then) =
      __$$DmDataErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$DmDataErrorImplCopyWithImpl<$Res>
    extends _$DmDataErrorCopyWithImpl<$Res, _$DmDataErrorImpl>
    implements _$$DmDataErrorImplCopyWith<$Res> {
  __$$DmDataErrorImplCopyWithImpl(
      _$DmDataErrorImpl _value, $Res Function(_$DmDataErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmDataError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$DmDataErrorImpl(
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
class _$DmDataErrorImpl implements _DmDataError {
  const _$DmDataErrorImpl({required this.message, required this.code});

  factory _$DmDataErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DmDataErrorImplFromJson(json);

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'DmDataError(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmDataErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of DmDataError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmDataErrorImplCopyWith<_$DmDataErrorImpl> get copyWith =>
      __$$DmDataErrorImplCopyWithImpl<_$DmDataErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmDataErrorImplToJson(
      this,
    );
  }
}

abstract class _DmDataError implements DmDataError {
  const factory _DmDataError(
      {required final String message,
      required final int code}) = _$DmDataErrorImpl;

  factory _DmDataError.fromJson(Map<String, dynamic> json) =
      _$DmDataErrorImpl.fromJson;

  @override
  String get message;
  @override
  int get code;

  /// Create a copy of DmDataError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmDataErrorImplCopyWith<_$DmDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
