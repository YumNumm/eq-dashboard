// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebSocketMessage _$WebSocketMessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'start':
      return WebSocketStartMessage.fromJson(json);
    case 'ping':
      return WebSocketPingMessage.fromJson(json);
    case 'pong':
      return WebSocketPongMessage.fromJson(json);
    case 'data':
      return WebSocketDataMessage.fromJson(json);
    case 'error':
      return WebSocketErrorMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'WebSocketMessage',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$WebSocketMessage {
  String? get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WebSocketMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketMessageCopyWith<WebSocketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketMessageCopyWith<$Res> {
  factory $WebSocketMessageCopyWith(
          WebSocketMessage value, $Res Function(WebSocketMessage) then) =
      _$WebSocketMessageCopyWithImpl<$Res, WebSocketMessage>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$WebSocketMessageCopyWithImpl<$Res, $Val extends WebSocketMessage>
    implements $WebSocketMessageCopyWith<$Res> {
  _$WebSocketMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type!
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketStartMessageImplCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$$WebSocketStartMessageImplCopyWith(
          _$WebSocketStartMessageImpl value,
          $Res Function(_$WebSocketStartMessageImpl) then) =
      __$$WebSocketStartMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int socketId,
      String test,
      List<String> formats,
      DateTime time,
      String? type,
      List<String>? classifications,
      List<String>? types,
      String? appName});
}

/// @nodoc
class __$$WebSocketStartMessageImplCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res, _$WebSocketStartMessageImpl>
    implements _$$WebSocketStartMessageImplCopyWith<$Res> {
  __$$WebSocketStartMessageImplCopyWithImpl(_$WebSocketStartMessageImpl _value,
      $Res Function(_$WebSocketStartMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketId = null,
    Object? test = null,
    Object? formats = null,
    Object? time = null,
    Object? type = freezed,
    Object? classifications = freezed,
    Object? types = freezed,
    Object? appName = freezed,
  }) {
    return _then(_$WebSocketStartMessageImpl(
      socketId: null == socketId
          ? _value.socketId
          : socketId // ignore: cast_nullable_to_non_nullable
              as int,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      formats: null == formats
          ? _value._formats
          : formats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      classifications: freezed == classifications
          ? _value._classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketStartMessageImpl implements WebSocketStartMessage {
  const _$WebSocketStartMessageImpl(
      {required this.socketId,
      required this.test,
      required final List<String> formats,
      required this.time,
      this.type,
      final List<String>? classifications,
      final List<String>? types,
      this.appName})
      : _formats = formats,
        _classifications = classifications,
        _types = types;

  factory _$WebSocketStartMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketStartMessageImplFromJson(json);

  @override
  final int socketId;
  @override
  final String test;
  final List<String> _formats;
  @override
  List<String> get formats {
    if (_formats is EqualUnmodifiableListView) return _formats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formats);
  }

  @override
  final DateTime time;
  @override
  final String? type;
  final List<String>? _classifications;
  @override
  List<String>? get classifications {
    final value = _classifications;
    if (value == null) return null;
    if (_classifications is EqualUnmodifiableListView) return _classifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? appName;

  @override
  String toString() {
    return 'WebSocketMessage.start(socketId: $socketId, test: $test, formats: $formats, time: $time, type: $type, classifications: $classifications, types: $types, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketStartMessageImpl &&
            (identical(other.socketId, socketId) ||
                other.socketId == socketId) &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other._formats, _formats) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._classifications, _classifications) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      socketId,
      test,
      const DeepCollectionEquality().hash(_formats),
      time,
      type,
      const DeepCollectionEquality().hash(_classifications),
      const DeepCollectionEquality().hash(_types),
      appName);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketStartMessageImplCopyWith<_$WebSocketStartMessageImpl>
      get copyWith => __$$WebSocketStartMessageImplCopyWithImpl<
          _$WebSocketStartMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) {
    return start(
        socketId, test, formats, time, type, classifications, types, appName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) {
    return start?.call(
        socketId, test, formats, time, type, classifications, types, appName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(
          socketId, test, formats, time, type, classifications, types, appName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketStartMessageImplToJson(
      this,
    );
  }
}

abstract class WebSocketStartMessage implements WebSocketMessage {
  const factory WebSocketStartMessage(
      {required final int socketId,
      required final String test,
      required final List<String> formats,
      required final DateTime time,
      final String? type,
      final List<String>? classifications,
      final List<String>? types,
      final String? appName}) = _$WebSocketStartMessageImpl;

  factory WebSocketStartMessage.fromJson(Map<String, dynamic> json) =
      _$WebSocketStartMessageImpl.fromJson;

  int get socketId;
  String get test;
  List<String> get formats;
  DateTime get time;
  @override
  String? get type;
  List<String>? get classifications;
  List<String>? get types;
  String? get appName;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketStartMessageImplCopyWith<_$WebSocketStartMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebSocketPingMessageImplCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$$WebSocketPingMessageImplCopyWith(_$WebSocketPingMessageImpl value,
          $Res Function(_$WebSocketPingMessageImpl) then) =
      __$$WebSocketPingMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String pingId});
}

/// @nodoc
class __$$WebSocketPingMessageImplCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res, _$WebSocketPingMessageImpl>
    implements _$$WebSocketPingMessageImplCopyWith<$Res> {
  __$$WebSocketPingMessageImplCopyWithImpl(_$WebSocketPingMessageImpl _value,
      $Res Function(_$WebSocketPingMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pingId = null,
  }) {
    return _then(_$WebSocketPingMessageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      pingId: null == pingId
          ? _value.pingId
          : pingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketPingMessageImpl implements WebSocketPingMessage {
  const _$WebSocketPingMessageImpl({required this.type, required this.pingId});

  factory _$WebSocketPingMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketPingMessageImplFromJson(json);

  @override
  final String type;
  @override
  final String pingId;

  @override
  String toString() {
    return 'WebSocketMessage.ping(type: $type, pingId: $pingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketPingMessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pingId, pingId) || other.pingId == pingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, pingId);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketPingMessageImplCopyWith<_$WebSocketPingMessageImpl>
      get copyWith =>
          __$$WebSocketPingMessageImplCopyWithImpl<_$WebSocketPingMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) {
    return ping(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) {
    return ping?.call(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
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
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) {
    return ping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) {
    return ping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (ping != null) {
      return ping(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketPingMessageImplToJson(
      this,
    );
  }
}

abstract class WebSocketPingMessage implements WebSocketMessage {
  const factory WebSocketPingMessage(
      {required final String type,
      required final String pingId}) = _$WebSocketPingMessageImpl;

  factory WebSocketPingMessage.fromJson(Map<String, dynamic> json) =
      _$WebSocketPingMessageImpl.fromJson;

  @override
  String get type;
  String get pingId;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketPingMessageImplCopyWith<_$WebSocketPingMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebSocketPongMessageImplCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$$WebSocketPongMessageImplCopyWith(_$WebSocketPongMessageImpl value,
          $Res Function(_$WebSocketPongMessageImpl) then) =
      __$$WebSocketPongMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? pingId});
}

/// @nodoc
class __$$WebSocketPongMessageImplCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res, _$WebSocketPongMessageImpl>
    implements _$$WebSocketPongMessageImplCopyWith<$Res> {
  __$$WebSocketPongMessageImplCopyWithImpl(_$WebSocketPongMessageImpl _value,
      $Res Function(_$WebSocketPongMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? pingId = freezed,
  }) {
    return _then(_$WebSocketPongMessageImpl(
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
class _$WebSocketPongMessageImpl implements WebSocketPongMessage {
  const _$WebSocketPongMessageImpl({required this.type, this.pingId});

  factory _$WebSocketPongMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketPongMessageImplFromJson(json);

  @override
  final String type;
  @override
  final String? pingId;

  @override
  String toString() {
    return 'WebSocketMessage.pong(type: $type, pingId: $pingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketPongMessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pingId, pingId) || other.pingId == pingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, pingId);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketPongMessageImplCopyWith<_$WebSocketPongMessageImpl>
      get copyWith =>
          __$$WebSocketPongMessageImplCopyWithImpl<_$WebSocketPongMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) {
    return pong(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) {
    return pong?.call(type, pingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
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
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) {
    return pong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) {
    return pong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (pong != null) {
      return pong(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketPongMessageImplToJson(
      this,
    );
  }
}

abstract class WebSocketPongMessage implements WebSocketMessage {
  const factory WebSocketPongMessage(
      {required final String type,
      final String? pingId}) = _$WebSocketPongMessageImpl;

  factory WebSocketPongMessage.fromJson(Map<String, dynamic> json) =
      _$WebSocketPongMessageImpl.fromJson;

  @override
  String get type;
  String? get pingId;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketPongMessageImplCopyWith<_$WebSocketPongMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebSocketDataMessageImplCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$$WebSocketDataMessageImplCopyWith(_$WebSocketDataMessageImpl value,
          $Res Function(_$WebSocketDataMessageImpl) then) =
      __$$WebSocketDataMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String version,
      String classification,
      String id,
      List<WebSocketPassing> passing,
      WebSocketHead head,
      String format,
      String encoding,
      String body,
      WebSocketXmlReport? xmlReport,
      String? compression});

  $WebSocketHeadCopyWith<$Res> get head;
  $WebSocketXmlReportCopyWith<$Res>? get xmlReport;
}

/// @nodoc
class __$$WebSocketDataMessageImplCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res, _$WebSocketDataMessageImpl>
    implements _$$WebSocketDataMessageImplCopyWith<$Res> {
  __$$WebSocketDataMessageImplCopyWithImpl(_$WebSocketDataMessageImpl _value,
      $Res Function(_$WebSocketDataMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? version = null,
    Object? classification = null,
    Object? id = null,
    Object? passing = null,
    Object? head = null,
    Object? format = null,
    Object? encoding = null,
    Object? body = null,
    Object? xmlReport = freezed,
    Object? compression = freezed,
  }) {
    return _then(_$WebSocketDataMessageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      passing: null == passing
          ? _value._passing
          : passing // ignore: cast_nullable_to_non_nullable
              as List<WebSocketPassing>,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as WebSocketHead,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      xmlReport: freezed == xmlReport
          ? _value.xmlReport
          : xmlReport // ignore: cast_nullable_to_non_nullable
              as WebSocketXmlReport?,
      compression: freezed == compression
          ? _value.compression
          : compression // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSocketHeadCopyWith<$Res> get head {
    return $WebSocketHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value));
    });
  }

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSocketXmlReportCopyWith<$Res>? get xmlReport {
    if (_value.xmlReport == null) {
      return null;
    }

    return $WebSocketXmlReportCopyWith<$Res>(_value.xmlReport!, (value) {
      return _then(_value.copyWith(xmlReport: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketDataMessageImpl implements WebSocketDataMessage {
  const _$WebSocketDataMessageImpl(
      {required this.type,
      required this.version,
      required this.classification,
      required this.id,
      required final List<WebSocketPassing> passing,
      required this.head,
      required this.format,
      required this.encoding,
      required this.body,
      this.xmlReport,
      this.compression})
      : _passing = passing;

  factory _$WebSocketDataMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketDataMessageImplFromJson(json);

  @override
  final String type;
  @override
  final String version;
  @override
  final String classification;
  @override
  final String id;
  final List<WebSocketPassing> _passing;
  @override
  List<WebSocketPassing> get passing {
    if (_passing is EqualUnmodifiableListView) return _passing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passing);
  }

  @override
  final WebSocketHead head;
  @override
  final String format;
  @override
  final String encoding;
  @override
  final String body;
  @override
  final WebSocketXmlReport? xmlReport;
  @override
  final String? compression;

  @override
  String toString() {
    return 'WebSocketMessage.data(type: $type, version: $version, classification: $classification, id: $id, passing: $passing, head: $head, format: $format, encoding: $encoding, body: $body, xmlReport: $xmlReport, compression: $compression)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketDataMessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._passing, _passing) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.xmlReport, xmlReport) ||
                other.xmlReport == xmlReport) &&
            (identical(other.compression, compression) ||
                other.compression == compression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      version,
      classification,
      id,
      const DeepCollectionEquality().hash(_passing),
      head,
      format,
      encoding,
      body,
      xmlReport,
      compression);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketDataMessageImplCopyWith<_$WebSocketDataMessageImpl>
      get copyWith =>
          __$$WebSocketDataMessageImplCopyWithImpl<_$WebSocketDataMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) {
    return data(type, version, classification, id, passing, head, format,
        encoding, body, xmlReport, compression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) {
    return data?.call(type, version, classification, id, passing, head, format,
        encoding, body, xmlReport, compression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(type, version, classification, id, passing, head, format,
          encoding, body, xmlReport, compression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketDataMessageImplToJson(
      this,
    );
  }
}

abstract class WebSocketDataMessage implements WebSocketMessage {
  const factory WebSocketDataMessage(
      {required final String type,
      required final String version,
      required final String classification,
      required final String id,
      required final List<WebSocketPassing> passing,
      required final WebSocketHead head,
      required final String format,
      required final String encoding,
      required final String body,
      final WebSocketXmlReport? xmlReport,
      final String? compression}) = _$WebSocketDataMessageImpl;

  factory WebSocketDataMessage.fromJson(Map<String, dynamic> json) =
      _$WebSocketDataMessageImpl.fromJson;

  @override
  String get type;
  String get version;
  String get classification;
  String get id;
  List<WebSocketPassing> get passing;
  WebSocketHead get head;
  String get format;
  String get encoding;
  String get body;
  WebSocketXmlReport? get xmlReport;
  String? get compression;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketDataMessageImplCopyWith<_$WebSocketDataMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WebSocketErrorMessageImplCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$$WebSocketErrorMessageImplCopyWith(
          _$WebSocketErrorMessageImpl value,
          $Res Function(_$WebSocketErrorMessageImpl) then) =
      __$$WebSocketErrorMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String error, int code, bool close});
}

/// @nodoc
class __$$WebSocketErrorMessageImplCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res, _$WebSocketErrorMessageImpl>
    implements _$$WebSocketErrorMessageImplCopyWith<$Res> {
  __$$WebSocketErrorMessageImplCopyWithImpl(_$WebSocketErrorMessageImpl _value,
      $Res Function(_$WebSocketErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? error = null,
    Object? code = null,
    Object? close = null,
  }) {
    return _then(_$WebSocketErrorMessageImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketErrorMessageImpl implements WebSocketErrorMessage {
  const _$WebSocketErrorMessageImpl(
      {required this.type,
      required this.error,
      required this.code,
      required this.close});

  factory _$WebSocketErrorMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketErrorMessageImplFromJson(json);

  @override
  final String type;
  @override
  final String error;
  @override
  final int code;
  @override
  final bool close;

  @override
  String toString() {
    return 'WebSocketMessage.error(type: $type, error: $error, code: $code, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketErrorMessageImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, error, code, close);

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketErrorMessageImplCopyWith<_$WebSocketErrorMessageImpl>
      get copyWith => __$$WebSocketErrorMessageImplCopyWithImpl<
          _$WebSocketErrorMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)
        start,
    required TResult Function(String type, String pingId) ping,
    required TResult Function(String type, String? pingId) pong,
    required TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)
        data,
    required TResult Function(String type, String error, int code, bool close)
        error,
  }) {
    return error(type, this.error, code, close);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult? Function(String type, String pingId)? ping,
    TResult? Function(String type, String? pingId)? pong,
    TResult? Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult? Function(String type, String error, int code, bool close)? error,
  }) {
    return error?.call(type, this.error, code, close);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int socketId,
            String test,
            List<String> formats,
            DateTime time,
            String? type,
            List<String>? classifications,
            List<String>? types,
            String? appName)?
        start,
    TResult Function(String type, String pingId)? ping,
    TResult Function(String type, String? pingId)? pong,
    TResult Function(
            String type,
            String version,
            String classification,
            String id,
            List<WebSocketPassing> passing,
            WebSocketHead head,
            String format,
            String encoding,
            String body,
            WebSocketXmlReport? xmlReport,
            String? compression)?
        data,
    TResult Function(String type, String error, int code, bool close)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(type, this.error, code, close);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WebSocketStartMessage value) start,
    required TResult Function(WebSocketPingMessage value) ping,
    required TResult Function(WebSocketPongMessage value) pong,
    required TResult Function(WebSocketDataMessage value) data,
    required TResult Function(WebSocketErrorMessage value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WebSocketStartMessage value)? start,
    TResult? Function(WebSocketPingMessage value)? ping,
    TResult? Function(WebSocketPongMessage value)? pong,
    TResult? Function(WebSocketDataMessage value)? data,
    TResult? Function(WebSocketErrorMessage value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WebSocketStartMessage value)? start,
    TResult Function(WebSocketPingMessage value)? ping,
    TResult Function(WebSocketPongMessage value)? pong,
    TResult Function(WebSocketDataMessage value)? data,
    TResult Function(WebSocketErrorMessage value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketErrorMessageImplToJson(
      this,
    );
  }
}

abstract class WebSocketErrorMessage implements WebSocketMessage {
  const factory WebSocketErrorMessage(
      {required final String type,
      required final String error,
      required final int code,
      required final bool close}) = _$WebSocketErrorMessageImpl;

  factory WebSocketErrorMessage.fromJson(Map<String, dynamic> json) =
      _$WebSocketErrorMessageImpl.fromJson;

  @override
  String get type;
  String get error;
  int get code;
  bool get close;

  /// Create a copy of WebSocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketErrorMessageImplCopyWith<_$WebSocketErrorMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WebSocketPassing _$WebSocketPassingFromJson(Map<String, dynamic> json) {
  return _WebSocketPassing.fromJson(json);
}

/// @nodoc
mixin _$WebSocketPassing {
  String get name => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  /// Serializes this WebSocketPassing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketPassing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketPassingCopyWith<WebSocketPassing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketPassingCopyWith<$Res> {
  factory $WebSocketPassingCopyWith(
          WebSocketPassing value, $Res Function(WebSocketPassing) then) =
      _$WebSocketPassingCopyWithImpl<$Res, WebSocketPassing>;
  @useResult
  $Res call({String name, String time});
}

/// @nodoc
class _$WebSocketPassingCopyWithImpl<$Res, $Val extends WebSocketPassing>
    implements $WebSocketPassingCopyWith<$Res> {
  _$WebSocketPassingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketPassing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketPassingImplCopyWith<$Res>
    implements $WebSocketPassingCopyWith<$Res> {
  factory _$$WebSocketPassingImplCopyWith(_$WebSocketPassingImpl value,
          $Res Function(_$WebSocketPassingImpl) then) =
      __$$WebSocketPassingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String time});
}

/// @nodoc
class __$$WebSocketPassingImplCopyWithImpl<$Res>
    extends _$WebSocketPassingCopyWithImpl<$Res, _$WebSocketPassingImpl>
    implements _$$WebSocketPassingImplCopyWith<$Res> {
  __$$WebSocketPassingImplCopyWithImpl(_$WebSocketPassingImpl _value,
      $Res Function(_$WebSocketPassingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketPassing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_$WebSocketPassingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketPassingImpl implements _WebSocketPassing {
  const _$WebSocketPassingImpl({required this.name, required this.time});

  factory _$WebSocketPassingImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketPassingImplFromJson(json);

  @override
  final String name;
  @override
  final String time;

  @override
  String toString() {
    return 'WebSocketPassing(name: $name, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketPassingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, time);

  /// Create a copy of WebSocketPassing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketPassingImplCopyWith<_$WebSocketPassingImpl> get copyWith =>
      __$$WebSocketPassingImplCopyWithImpl<_$WebSocketPassingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketPassingImplToJson(
      this,
    );
  }
}

abstract class _WebSocketPassing implements WebSocketPassing {
  const factory _WebSocketPassing(
      {required final String name,
      required final String time}) = _$WebSocketPassingImpl;

  factory _WebSocketPassing.fromJson(Map<String, dynamic> json) =
      _$WebSocketPassingImpl.fromJson;

  @override
  String get name;
  @override
  String get time;

  /// Create a copy of WebSocketPassing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketPassingImplCopyWith<_$WebSocketPassingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketHead _$WebSocketHeadFromJson(Map<String, dynamic> json) {
  return _WebSocketHead.fromJson(json);
}

/// @nodoc
mixin _$WebSocketHead {
  String get type => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  bool get test => throw _privateConstructorUsedError;
  String? get target => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  bool? get xml => throw _privateConstructorUsedError;

  /// Serializes this WebSocketHead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketHeadCopyWith<WebSocketHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketHeadCopyWith<$Res> {
  factory $WebSocketHeadCopyWith(
          WebSocketHead value, $Res Function(WebSocketHead) then) =
      _$WebSocketHeadCopyWithImpl<$Res, WebSocketHead>;
  @useResult
  $Res call(
      {String type,
      String author,
      String time,
      bool test,
      String? target,
      String? designation,
      bool? xml});
}

/// @nodoc
class _$WebSocketHeadCopyWithImpl<$Res, $Val extends WebSocketHead>
    implements $WebSocketHeadCopyWith<$Res> {
  _$WebSocketHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? author = null,
    Object? time = null,
    Object? test = null,
    Object? target = freezed,
    Object? designation = freezed,
    Object? xml = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      xml: freezed == xml
          ? _value.xml
          : xml // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketHeadImplCopyWith<$Res>
    implements $WebSocketHeadCopyWith<$Res> {
  factory _$$WebSocketHeadImplCopyWith(
          _$WebSocketHeadImpl value, $Res Function(_$WebSocketHeadImpl) then) =
      __$$WebSocketHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String author,
      String time,
      bool test,
      String? target,
      String? designation,
      bool? xml});
}

/// @nodoc
class __$$WebSocketHeadImplCopyWithImpl<$Res>
    extends _$WebSocketHeadCopyWithImpl<$Res, _$WebSocketHeadImpl>
    implements _$$WebSocketHeadImplCopyWith<$Res> {
  __$$WebSocketHeadImplCopyWithImpl(
      _$WebSocketHeadImpl _value, $Res Function(_$WebSocketHeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? author = null,
    Object? time = null,
    Object? test = null,
    Object? target = freezed,
    Object? designation = freezed,
    Object? xml = freezed,
  }) {
    return _then(_$WebSocketHeadImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      xml: freezed == xml
          ? _value.xml
          : xml // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketHeadImpl implements _WebSocketHead {
  const _$WebSocketHeadImpl(
      {required this.type,
      required this.author,
      required this.time,
      required this.test,
      this.target,
      this.designation,
      this.xml});

  factory _$WebSocketHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketHeadImplFromJson(json);

  @override
  final String type;
  @override
  final String author;
  @override
  final String time;
  @override
  final bool test;
  @override
  final String? target;
  @override
  final String? designation;
  @override
  final bool? xml;

  @override
  String toString() {
    return 'WebSocketHead(type: $type, author: $author, time: $time, test: $test, target: $target, designation: $designation, xml: $xml)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketHeadImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.xml, xml) || other.xml == xml));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, author, time, test, target, designation, xml);

  /// Create a copy of WebSocketHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketHeadImplCopyWith<_$WebSocketHeadImpl> get copyWith =>
      __$$WebSocketHeadImplCopyWithImpl<_$WebSocketHeadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketHeadImplToJson(
      this,
    );
  }
}

abstract class _WebSocketHead implements WebSocketHead {
  const factory _WebSocketHead(
      {required final String type,
      required final String author,
      required final String time,
      required final bool test,
      final String? target,
      final String? designation,
      final bool? xml}) = _$WebSocketHeadImpl;

  factory _WebSocketHead.fromJson(Map<String, dynamic> json) =
      _$WebSocketHeadImpl.fromJson;

  @override
  String get type;
  @override
  String get author;
  @override
  String get time;
  @override
  bool get test;
  @override
  String? get target;
  @override
  String? get designation;
  @override
  bool? get xml;

  /// Create a copy of WebSocketHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketHeadImplCopyWith<_$WebSocketHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketXmlReport _$WebSocketXmlReportFromJson(Map<String, dynamic> json) {
  return _WebSocketXmlReport.fromJson(json);
}

/// @nodoc
mixin _$WebSocketXmlReport {
  WebSocketControl get control => throw _privateConstructorUsedError;
  WebSocketHead get head => throw _privateConstructorUsedError;

  /// Serializes this WebSocketXmlReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketXmlReportCopyWith<WebSocketXmlReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketXmlReportCopyWith<$Res> {
  factory $WebSocketXmlReportCopyWith(
          WebSocketXmlReport value, $Res Function(WebSocketXmlReport) then) =
      _$WebSocketXmlReportCopyWithImpl<$Res, WebSocketXmlReport>;
  @useResult
  $Res call({WebSocketControl control, WebSocketHead head});

  $WebSocketControlCopyWith<$Res> get control;
  $WebSocketHeadCopyWith<$Res> get head;
}

/// @nodoc
class _$WebSocketXmlReportCopyWithImpl<$Res, $Val extends WebSocketXmlReport>
    implements $WebSocketXmlReportCopyWith<$Res> {
  _$WebSocketXmlReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? control = null,
    Object? head = null,
  }) {
    return _then(_value.copyWith(
      control: null == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as WebSocketControl,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as WebSocketHead,
    ) as $Val);
  }

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSocketControlCopyWith<$Res> get control {
    return $WebSocketControlCopyWith<$Res>(_value.control, (value) {
      return _then(_value.copyWith(control: value) as $Val);
    });
  }

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSocketHeadCopyWith<$Res> get head {
    return $WebSocketHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WebSocketXmlReportImplCopyWith<$Res>
    implements $WebSocketXmlReportCopyWith<$Res> {
  factory _$$WebSocketXmlReportImplCopyWith(_$WebSocketXmlReportImpl value,
          $Res Function(_$WebSocketXmlReportImpl) then) =
      __$$WebSocketXmlReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WebSocketControl control, WebSocketHead head});

  @override
  $WebSocketControlCopyWith<$Res> get control;
  @override
  $WebSocketHeadCopyWith<$Res> get head;
}

/// @nodoc
class __$$WebSocketXmlReportImplCopyWithImpl<$Res>
    extends _$WebSocketXmlReportCopyWithImpl<$Res, _$WebSocketXmlReportImpl>
    implements _$$WebSocketXmlReportImplCopyWith<$Res> {
  __$$WebSocketXmlReportImplCopyWithImpl(_$WebSocketXmlReportImpl _value,
      $Res Function(_$WebSocketXmlReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? control = null,
    Object? head = null,
  }) {
    return _then(_$WebSocketXmlReportImpl(
      control: null == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as WebSocketControl,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as WebSocketHead,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketXmlReportImpl implements _WebSocketXmlReport {
  const _$WebSocketXmlReportImpl({required this.control, required this.head});

  factory _$WebSocketXmlReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketXmlReportImplFromJson(json);

  @override
  final WebSocketControl control;
  @override
  final WebSocketHead head;

  @override
  String toString() {
    return 'WebSocketXmlReport(control: $control, head: $head)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketXmlReportImpl &&
            (identical(other.control, control) || other.control == control) &&
            (identical(other.head, head) || other.head == head));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, control, head);

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketXmlReportImplCopyWith<_$WebSocketXmlReportImpl> get copyWith =>
      __$$WebSocketXmlReportImplCopyWithImpl<_$WebSocketXmlReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketXmlReportImplToJson(
      this,
    );
  }
}

abstract class _WebSocketXmlReport implements WebSocketXmlReport {
  const factory _WebSocketXmlReport(
      {required final WebSocketControl control,
      required final WebSocketHead head}) = _$WebSocketXmlReportImpl;

  factory _WebSocketXmlReport.fromJson(Map<String, dynamic> json) =
      _$WebSocketXmlReportImpl.fromJson;

  @override
  WebSocketControl get control;
  @override
  WebSocketHead get head;

  /// Create a copy of WebSocketXmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketXmlReportImplCopyWith<_$WebSocketXmlReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketControl _$WebSocketControlFromJson(Map<String, dynamic> json) {
  return _WebSocketControl.fromJson(json);
}

/// @nodoc
mixin _$WebSocketControl {
  String get title => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get editorialOffice => throw _privateConstructorUsedError;
  String get publishingOffice => throw _privateConstructorUsedError;

  /// Serializes this WebSocketControl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketControlCopyWith<WebSocketControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketControlCopyWith<$Res> {
  factory $WebSocketControlCopyWith(
          WebSocketControl value, $Res Function(WebSocketControl) then) =
      _$WebSocketControlCopyWithImpl<$Res, WebSocketControl>;
  @useResult
  $Res call(
      {String title,
      String dateTime,
      String status,
      String editorialOffice,
      String publishingOffice});
}

/// @nodoc
class _$WebSocketControlCopyWithImpl<$Res, $Val extends WebSocketControl>
    implements $WebSocketControlCopyWith<$Res> {
  _$WebSocketControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? dateTime = null,
    Object? status = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      editorialOffice: null == editorialOffice
          ? _value.editorialOffice
          : editorialOffice // ignore: cast_nullable_to_non_nullable
              as String,
      publishingOffice: null == publishingOffice
          ? _value.publishingOffice
          : publishingOffice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketControlImplCopyWith<$Res>
    implements $WebSocketControlCopyWith<$Res> {
  factory _$$WebSocketControlImplCopyWith(_$WebSocketControlImpl value,
          $Res Function(_$WebSocketControlImpl) then) =
      __$$WebSocketControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String dateTime,
      String status,
      String editorialOffice,
      String publishingOffice});
}

/// @nodoc
class __$$WebSocketControlImplCopyWithImpl<$Res>
    extends _$WebSocketControlCopyWithImpl<$Res, _$WebSocketControlImpl>
    implements _$$WebSocketControlImplCopyWith<$Res> {
  __$$WebSocketControlImplCopyWithImpl(_$WebSocketControlImpl _value,
      $Res Function(_$WebSocketControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? dateTime = null,
    Object? status = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
  }) {
    return _then(_$WebSocketControlImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      editorialOffice: null == editorialOffice
          ? _value.editorialOffice
          : editorialOffice // ignore: cast_nullable_to_non_nullable
              as String,
      publishingOffice: null == publishingOffice
          ? _value.publishingOffice
          : publishingOffice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketControlImpl implements _WebSocketControl {
  const _$WebSocketControlImpl(
      {required this.title,
      required this.dateTime,
      required this.status,
      required this.editorialOffice,
      required this.publishingOffice});

  factory _$WebSocketControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketControlImplFromJson(json);

  @override
  final String title;
  @override
  final String dateTime;
  @override
  final String status;
  @override
  final String editorialOffice;
  @override
  final String publishingOffice;

  @override
  String toString() {
    return 'WebSocketControl(title: $title, dateTime: $dateTime, status: $status, editorialOffice: $editorialOffice, publishingOffice: $publishingOffice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketControlImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.editorialOffice, editorialOffice) ||
                other.editorialOffice == editorialOffice) &&
            (identical(other.publishingOffice, publishingOffice) ||
                other.publishingOffice == publishingOffice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, dateTime, status, editorialOffice, publishingOffice);

  /// Create a copy of WebSocketControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketControlImplCopyWith<_$WebSocketControlImpl> get copyWith =>
      __$$WebSocketControlImplCopyWithImpl<_$WebSocketControlImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketControlImplToJson(
      this,
    );
  }
}

abstract class _WebSocketControl implements WebSocketControl {
  const factory _WebSocketControl(
      {required final String title,
      required final String dateTime,
      required final String status,
      required final String editorialOffice,
      required final String publishingOffice}) = _$WebSocketControlImpl;

  factory _WebSocketControl.fromJson(Map<String, dynamic> json) =
      _$WebSocketControlImpl.fromJson;

  @override
  String get title;
  @override
  String get dateTime;
  @override
  String get status;
  @override
  String get editorialOffice;
  @override
  String get publishingOffice;

  /// Create a copy of WebSocketControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketControlImplCopyWith<_$WebSocketControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketReportHead _$WebSocketReportHeadFromJson(Map<String, dynamic> json) {
  return _WebSocketReportHead.fromJson(json);
}

/// @nodoc
mixin _$WebSocketReportHead {
  String get title => throw _privateConstructorUsedError;
  String get reportDateTime => throw _privateConstructorUsedError;
  String get targetDateTime => throw _privateConstructorUsedError;
  String get infoType => throw _privateConstructorUsedError;
  String get infoKind => throw _privateConstructorUsedError;
  String get infoKindVersion => throw _privateConstructorUsedError;
  String? get eventId => throw _privateConstructorUsedError;
  String? get serial => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;

  /// Serializes this WebSocketReportHead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketReportHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketReportHeadCopyWith<WebSocketReportHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketReportHeadCopyWith<$Res> {
  factory $WebSocketReportHeadCopyWith(
          WebSocketReportHead value, $Res Function(WebSocketReportHead) then) =
      _$WebSocketReportHeadCopyWithImpl<$Res, WebSocketReportHead>;
  @useResult
  $Res call(
      {String title,
      String reportDateTime,
      String targetDateTime,
      String infoType,
      String infoKind,
      String infoKindVersion,
      String? eventId,
      String? serial,
      String? headline});
}

/// @nodoc
class _$WebSocketReportHeadCopyWithImpl<$Res, $Val extends WebSocketReportHead>
    implements $WebSocketReportHeadCopyWith<$Res> {
  _$WebSocketReportHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketReportHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? infoType = null,
    Object? infoKind = null,
    Object? infoKindVersion = null,
    Object? eventId = freezed,
    Object? serial = freezed,
    Object? headline = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      infoType: null == infoType
          ? _value.infoType
          : infoType // ignore: cast_nullable_to_non_nullable
              as String,
      infoKind: null == infoKind
          ? _value.infoKind
          : infoKind // ignore: cast_nullable_to_non_nullable
              as String,
      infoKindVersion: null == infoKindVersion
          ? _value.infoKindVersion
          : infoKindVersion // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketReportHeadImplCopyWith<$Res>
    implements $WebSocketReportHeadCopyWith<$Res> {
  factory _$$WebSocketReportHeadImplCopyWith(_$WebSocketReportHeadImpl value,
          $Res Function(_$WebSocketReportHeadImpl) then) =
      __$$WebSocketReportHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String reportDateTime,
      String targetDateTime,
      String infoType,
      String infoKind,
      String infoKindVersion,
      String? eventId,
      String? serial,
      String? headline});
}

/// @nodoc
class __$$WebSocketReportHeadImplCopyWithImpl<$Res>
    extends _$WebSocketReportHeadCopyWithImpl<$Res, _$WebSocketReportHeadImpl>
    implements _$$WebSocketReportHeadImplCopyWith<$Res> {
  __$$WebSocketReportHeadImplCopyWithImpl(_$WebSocketReportHeadImpl _value,
      $Res Function(_$WebSocketReportHeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketReportHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? infoType = null,
    Object? infoKind = null,
    Object? infoKindVersion = null,
    Object? eventId = freezed,
    Object? serial = freezed,
    Object? headline = freezed,
  }) {
    return _then(_$WebSocketReportHeadImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      infoType: null == infoType
          ? _value.infoType
          : infoType // ignore: cast_nullable_to_non_nullable
              as String,
      infoKind: null == infoKind
          ? _value.infoKind
          : infoKind // ignore: cast_nullable_to_non_nullable
              as String,
      infoKindVersion: null == infoKindVersion
          ? _value.infoKindVersion
          : infoKindVersion // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketReportHeadImpl implements _WebSocketReportHead {
  const _$WebSocketReportHeadImpl(
      {required this.title,
      required this.reportDateTime,
      required this.targetDateTime,
      required this.infoType,
      required this.infoKind,
      required this.infoKindVersion,
      this.eventId,
      this.serial,
      this.headline});

  factory _$WebSocketReportHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketReportHeadImplFromJson(json);

  @override
  final String title;
  @override
  final String reportDateTime;
  @override
  final String targetDateTime;
  @override
  final String infoType;
  @override
  final String infoKind;
  @override
  final String infoKindVersion;
  @override
  final String? eventId;
  @override
  final String? serial;
  @override
  final String? headline;

  @override
  String toString() {
    return 'WebSocketReportHead(title: $title, reportDateTime: $reportDateTime, targetDateTime: $targetDateTime, infoType: $infoType, infoKind: $infoKind, infoKindVersion: $infoKindVersion, eventId: $eventId, serial: $serial, headline: $headline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketReportHeadImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.reportDateTime, reportDateTime) ||
                other.reportDateTime == reportDateTime) &&
            (identical(other.targetDateTime, targetDateTime) ||
                other.targetDateTime == targetDateTime) &&
            (identical(other.infoType, infoType) ||
                other.infoType == infoType) &&
            (identical(other.infoKind, infoKind) ||
                other.infoKind == infoKind) &&
            (identical(other.infoKindVersion, infoKindVersion) ||
                other.infoKindVersion == infoKindVersion) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.headline, headline) ||
                other.headline == headline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      reportDateTime,
      targetDateTime,
      infoType,
      infoKind,
      infoKindVersion,
      eventId,
      serial,
      headline);

  /// Create a copy of WebSocketReportHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketReportHeadImplCopyWith<_$WebSocketReportHeadImpl> get copyWith =>
      __$$WebSocketReportHeadImplCopyWithImpl<_$WebSocketReportHeadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketReportHeadImplToJson(
      this,
    );
  }
}

abstract class _WebSocketReportHead implements WebSocketReportHead {
  const factory _WebSocketReportHead(
      {required final String title,
      required final String reportDateTime,
      required final String targetDateTime,
      required final String infoType,
      required final String infoKind,
      required final String infoKindVersion,
      final String? eventId,
      final String? serial,
      final String? headline}) = _$WebSocketReportHeadImpl;

  factory _WebSocketReportHead.fromJson(Map<String, dynamic> json) =
      _$WebSocketReportHeadImpl.fromJson;

  @override
  String get title;
  @override
  String get reportDateTime;
  @override
  String get targetDateTime;
  @override
  String get infoType;
  @override
  String get infoKind;
  @override
  String get infoKindVersion;
  @override
  String? get eventId;
  @override
  String? get serial;
  @override
  String? get headline;

  /// Create a copy of WebSocketReportHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketReportHeadImplCopyWith<_$WebSocketReportHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
