// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_close.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketCloseResponse _$SocketCloseResponseFromJson(Map<String, dynamic> json) {
  return _SocketCloseResponse.fromJson(json);
}

/// @nodoc
mixin _$SocketCloseResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// Serializes this SocketCloseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketCloseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketCloseResponseCopyWith<SocketCloseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketCloseResponseCopyWith<$Res> {
  factory $SocketCloseResponseCopyWith(
          SocketCloseResponse value, $Res Function(SocketCloseResponse) then) =
      _$SocketCloseResponseCopyWithImpl<$Res, SocketCloseResponse>;
  @useResult
  $Res call({String responseId, String responseTime, String status});
}

/// @nodoc
class _$SocketCloseResponseCopyWithImpl<$Res, $Val extends SocketCloseResponse>
    implements $SocketCloseResponseCopyWith<$Res> {
  _$SocketCloseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketCloseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketCloseResponseImplCopyWith<$Res>
    implements $SocketCloseResponseCopyWith<$Res> {
  factory _$$SocketCloseResponseImplCopyWith(_$SocketCloseResponseImpl value,
          $Res Function(_$SocketCloseResponseImpl) then) =
      __$$SocketCloseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String responseId, String responseTime, String status});
}

/// @nodoc
class __$$SocketCloseResponseImplCopyWithImpl<$Res>
    extends _$SocketCloseResponseCopyWithImpl<$Res, _$SocketCloseResponseImpl>
    implements _$$SocketCloseResponseImplCopyWith<$Res> {
  __$$SocketCloseResponseImplCopyWithImpl(_$SocketCloseResponseImpl _value,
      $Res Function(_$SocketCloseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketCloseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
  }) {
    return _then(_$SocketCloseResponseImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketCloseResponseImpl implements _SocketCloseResponse {
  const _$SocketCloseResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status});

  factory _$SocketCloseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketCloseResponseImplFromJson(json);

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

  @override
  String toString() {
    return 'SocketCloseResponse(responseId: $responseId, responseTime: $responseTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketCloseResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseId, responseTime, status);

  /// Create a copy of SocketCloseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketCloseResponseImplCopyWith<_$SocketCloseResponseImpl> get copyWith =>
      __$$SocketCloseResponseImplCopyWithImpl<_$SocketCloseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketCloseResponseImplToJson(
      this,
    );
  }
}

abstract class _SocketCloseResponse implements SocketCloseResponse {
  const factory _SocketCloseResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status}) = _$SocketCloseResponseImpl;

  factory _SocketCloseResponse.fromJson(Map<String, dynamic> json) =
      _$SocketCloseResponseImpl.fromJson;

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

  /// Create a copy of SocketCloseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketCloseResponseImplCopyWith<_$SocketCloseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
