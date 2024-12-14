// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DmdataErrorResponse _$DmdataErrorResponseFromJson(Map<String, dynamic> json) {
  return _DmdataErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$DmdataErrorResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// エラー情報
  ErrorInfo get error => throw _privateConstructorUsedError;

  /// Serializes this DmdataErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataErrorResponseCopyWith<DmdataErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataErrorResponseCopyWith<$Res> {
  factory $DmdataErrorResponseCopyWith(
          DmdataErrorResponse value, $Res Function(DmdataErrorResponse) then) =
      _$DmdataErrorResponseCopyWithImpl<$Res, DmdataErrorResponse>;
  @useResult
  $Res call(
      {String responseId, String responseTime, String status, ErrorInfo error});

  $ErrorInfoCopyWith<$Res> get error;
}

/// @nodoc
class _$DmdataErrorResponseCopyWithImpl<$Res, $Val extends DmdataErrorResponse>
    implements $DmdataErrorResponseCopyWith<$Res> {
  _$DmdataErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ) as $Val);
  }

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ErrorInfoCopyWith<$Res> get error {
    return $ErrorInfoCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DmdataErrorResponseImplCopyWith<$Res>
    implements $DmdataErrorResponseCopyWith<$Res> {
  factory _$$DmdataErrorResponseImplCopyWith(_$DmdataErrorResponseImpl value,
          $Res Function(_$DmdataErrorResponseImpl) then) =
      __$$DmdataErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId, String responseTime, String status, ErrorInfo error});

  @override
  $ErrorInfoCopyWith<$Res> get error;
}

/// @nodoc
class __$$DmdataErrorResponseImplCopyWithImpl<$Res>
    extends _$DmdataErrorResponseCopyWithImpl<$Res, _$DmdataErrorResponseImpl>
    implements _$$DmdataErrorResponseImplCopyWith<$Res> {
  __$$DmdataErrorResponseImplCopyWithImpl(_$DmdataErrorResponseImpl _value,
      $Res Function(_$DmdataErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? error = null,
  }) {
    return _then(_$DmdataErrorResponseImpl(
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DmdataErrorResponseImpl implements _DmdataErrorResponse {
  const _$DmdataErrorResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required this.error});

  factory _$DmdataErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DmdataErrorResponseImplFromJson(json);

  /// API処理ID
  @override
  final String responseId;

  /// API処理時刻（ISO8601拡張形式）
  @override
  final String responseTime;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  @override
  final String status;

  /// エラー情報
  @override
  final ErrorInfo error;

  @override
  String toString() {
    return 'DmdataErrorResponse(responseId: $responseId, responseTime: $responseTime, status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataErrorResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseId, responseTime, status, error);

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataErrorResponseImplCopyWith<_$DmdataErrorResponseImpl> get copyWith =>
      __$$DmdataErrorResponseImplCopyWithImpl<_$DmdataErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _DmdataErrorResponse implements DmdataErrorResponse {
  const factory _DmdataErrorResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final ErrorInfo error}) = _$DmdataErrorResponseImpl;

  factory _DmdataErrorResponse.fromJson(Map<String, dynamic> json) =
      _$DmdataErrorResponseImpl.fromJson;

  /// API処理ID
  @override
  String get responseId;

  /// API処理時刻（ISO8601拡張形式）
  @override
  String get responseTime;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  @override
  String get status;

  /// エラー情報
  @override
  ErrorInfo get error;

  /// Create a copy of DmdataErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataErrorResponseImplCopyWith<_$DmdataErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorInfo _$ErrorInfoFromJson(Map<String, dynamic> json) {
  return _ErrorInfo.fromJson(json);
}

/// @nodoc
mixin _$ErrorInfo {
  /// エラーメッセージ
  String get message => throw _privateConstructorUsedError;

  /// HTTPステータスコード
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ErrorInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ErrorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ErrorInfoCopyWith<ErrorInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorInfoCopyWith<$Res> {
  factory $ErrorInfoCopyWith(ErrorInfo value, $Res Function(ErrorInfo) then) =
      _$ErrorInfoCopyWithImpl<$Res, ErrorInfo>;
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class _$ErrorInfoCopyWithImpl<$Res, $Val extends ErrorInfo>
    implements $ErrorInfoCopyWith<$Res> {
  _$ErrorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorInfo
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
abstract class _$$ErrorInfoImplCopyWith<$Res>
    implements $ErrorInfoCopyWith<$Res> {
  factory _$$ErrorInfoImplCopyWith(
          _$ErrorInfoImpl value, $Res Function(_$ErrorInfoImpl) then) =
      __$$ErrorInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ErrorInfoImplCopyWithImpl<$Res>
    extends _$ErrorInfoCopyWithImpl<$Res, _$ErrorInfoImpl>
    implements _$$ErrorInfoImplCopyWith<$Res> {
  __$$ErrorInfoImplCopyWithImpl(
      _$ErrorInfoImpl _value, $Res Function(_$ErrorInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ErrorInfoImpl(
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
class _$ErrorInfoImpl implements _ErrorInfo {
  const _$ErrorInfoImpl({required this.message, required this.code});

  factory _$ErrorInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorInfoImplFromJson(json);

  /// エラーメッセージ
  @override
  final String message;

  /// HTTPステータスコード
  @override
  final int code;

  @override
  String toString() {
    return 'ErrorInfo(message: $message, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorInfoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  /// Create a copy of ErrorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorInfoImplCopyWith<_$ErrorInfoImpl> get copyWith =>
      __$$ErrorInfoImplCopyWithImpl<_$ErrorInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorInfoImplToJson(
      this,
    );
  }
}

abstract class _ErrorInfo implements ErrorInfo {
  const factory _ErrorInfo(
      {required final String message,
      required final int code}) = _$ErrorInfoImpl;

  factory _ErrorInfo.fromJson(Map<String, dynamic> json) =
      _$ErrorInfoImpl.fromJson;

  /// エラーメッセージ
  @override
  String get message;

  /// HTTPステータスコード
  @override
  int get code;

  /// Create a copy of ErrorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorInfoImplCopyWith<_$ErrorInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
