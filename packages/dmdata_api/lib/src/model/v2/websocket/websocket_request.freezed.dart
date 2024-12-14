// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebSocketRequest _$WebSocketRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'ping':
      return WebSocketPingRequest.fromJson(json);
    case 'pong':
      return WebSocketPongRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WebSocketRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WebSocketRequest {
  String get type => throw _privateConstructorUsedError;
  String? get pingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String? pingId) ping,
    required TResult Function(String type, String? pingId) pong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String? pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String? pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketPingRequest value) ping,
    required TResult Function(WebSocketPongRequest value) pong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketPingRequest value)? ping,
    TResult? Function(WebSocketPongRequest value)? pong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketPingRequest value)? ping,
    TResult Function(WebSocketPongRequest value)? pong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WebSocketRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketRequestCopyWith<WebSocketRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketRequestCopyWith<$Res> {
  factory $WebSocketRequestCopyWith(
          WebSocketRequest value, $Res Function(WebSocketRequest) then) =
      _$WebSocketRequestCopyWithImpl<$Res, WebSocketRequest>;
  @useResult
  $Res call({String type, String? pingId});
}

/// @nodoc
class _$WebSocketRequestCopyWithImpl<$Res, $Val extends WebSocketRequest>
    implements $WebSocketRequestCopyWith<$Res> {
  _$WebSocketRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pingId = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pingId: freezed == pingId
          ? _value.pingId
          : pingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketPingRequestImplCopyWith<$Res>
    implements $WebSocketRequestCopyWith<$Res> {
  factory _$$WebSocketPingRequestImplCopyWith(_$WebSocketPingRequestImpl value,
          $Res Function(_$WebSocketPingRequestImpl) then) =
      __$$WebSocketPingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? pingId});
}

/// @nodoc
class __$$WebSocketPingRequestImplCopyWithImpl<$Res>
    extends _$WebSocketRequestCopyWithImpl<$Res, _$WebSocketPingRequestImpl>
    implements _$$WebSocketPingRequestImplCopyWith<$Res> {
  __$$WebSocketPingRequestImplCopyWithImpl(_$WebSocketPingRequestImpl _value,
      $Res Function(_$WebSocketPingRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pingId = freezed,
  }) {
    return _then(_$WebSocketPingRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pingId: freezed == pingId
          ? _value.pingId
          : pingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketPingRequestImpl implements WebSocketPingRequest {
  const _$WebSocketPingRequestImpl(
      {required this.type, this.pingId, final String? $type})
      : $type = $type ?? 'ping';

  factory _$WebSocketPingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketPingRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String? pingId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WebSocketRequest.ping(type: $type, pingId: $pingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketPingRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pingId, pingId) || other.pingId == pingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, pingId);

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketPingRequestImplCopyWith<_$WebSocketPingRequestImpl>
      get copyWith =>
          __$$WebSocketPingRequestImplCopyWithImpl<_$WebSocketPingRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String? pingId) ping,
    required TResult Function(String type, String? pingId) pong,
  }) {
    return ping(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String? pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
  }) {
    return ping?.call(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String? pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(type, pingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketPingRequest value) ping,
    required TResult Function(WebSocketPongRequest value) pong,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketPingRequest value)? ping,
    TResult? Function(WebSocketPongRequest value)? pong,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketPingRequest value)? ping,
    TResult Function(WebSocketPongRequest value)? pong,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketPingRequestImplToJson(
      this,
    );
  }
}

abstract class WebSocketPingRequest implements WebSocketRequest {
  const factory WebSocketPingRequest(
      {required final String type,
      final String? pingId}) = _$WebSocketPingRequestImpl;

  factory WebSocketPingRequest.fromJson(Map<String, dynamic> json) =
      _$WebSocketPingRequestImpl.fromJson;

  @override
  String get type;
  @override
  String? get pingId;

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketPingRequestImplCopyWith<_$WebSocketPingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebSocketPongRequestImplCopyWith<$Res>
    implements $WebSocketRequestCopyWith<$Res> {
  factory _$$WebSocketPongRequestImplCopyWith(_$WebSocketPongRequestImpl value,
          $Res Function(_$WebSocketPongRequestImpl) then) =
      __$$WebSocketPongRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? pingId});
}

/// @nodoc
class __$$WebSocketPongRequestImplCopyWithImpl<$Res>
    extends _$WebSocketRequestCopyWithImpl<$Res, _$WebSocketPongRequestImpl>
    implements _$$WebSocketPongRequestImplCopyWith<$Res> {
  __$$WebSocketPongRequestImplCopyWithImpl(_$WebSocketPongRequestImpl _value,
      $Res Function(_$WebSocketPongRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pingId = freezed,
  }) {
    return _then(_$WebSocketPongRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pingId: freezed == pingId
          ? _value.pingId
          : pingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketPongRequestImpl implements WebSocketPongRequest {
  const _$WebSocketPongRequestImpl(
      {required this.type, this.pingId, final String? $type})
      : $type = $type ?? 'pong';

  factory _$WebSocketPongRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketPongRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String? pingId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WebSocketRequest.pong(type: $type, pingId: $pingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketPongRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pingId, pingId) || other.pingId == pingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, pingId);

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketPongRequestImplCopyWith<_$WebSocketPongRequestImpl>
      get copyWith =>
          __$$WebSocketPongRequestImplCopyWithImpl<_$WebSocketPongRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String? pingId) ping,
    required TResult Function(String type, String? pingId) pong,
  }) {
    return pong(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String? pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
  }) {
    return pong?.call(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String? pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    required TResult orElse(),
  }) {
    if (pong != null) {
      return pong(type, pingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketPingRequest value) ping,
    required TResult Function(WebSocketPongRequest value) pong,
  }) {
    return pong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketPingRequest value)? ping,
    TResult? Function(WebSocketPongRequest value)? pong,
  }) {
    return pong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketPingRequest value)? ping,
    TResult Function(WebSocketPongRequest value)? pong,
    required TResult orElse(),
  }) {
    if (pong != null) {
      return pong(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketPongRequestImplToJson(
      this,
    );
  }
}

abstract class WebSocketPongRequest implements WebSocketRequest {
  const factory WebSocketPongRequest(
      {required final String type,
      final String? pingId}) = _$WebSocketPongRequestImpl;

  factory WebSocketPongRequest.fromJson(Map<String, dynamic> json) =
      _$WebSocketPongRequestImpl.fromJson;

  @override
  String get type;
  @override
  String? get pingId;

  /// Create a copy of WebSocketRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketPongRequestImplCopyWith<_$WebSocketPongRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
