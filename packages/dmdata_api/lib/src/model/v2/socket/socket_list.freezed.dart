// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketListResponse _$SocketListResponseFromJson(Map<String, dynamic> json) {
  return _SocketListResponse.fromJson(json);
}

/// @nodoc
mixin _$SocketListResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// WebSocket情報のリスト
  List<SocketItem> get items => throw _privateConstructorUsedError;

  /// 次のリソースを取得するためのトークン
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this SocketListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketListResponseCopyWith<SocketListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketListResponseCopyWith<$Res> {
  factory $SocketListResponseCopyWith(
          SocketListResponse value, $Res Function(SocketListResponse) then) =
      _$SocketListResponseCopyWithImpl<$Res, SocketListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<SocketItem> items,
      String? nextToken});
}

/// @nodoc
class _$SocketListResponseCopyWithImpl<$Res, $Val extends SocketListResponse>
    implements $SocketListResponseCopyWith<$Res> {
  _$SocketListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? nextToken = freezed,
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SocketItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketListResponseImplCopyWith<$Res>
    implements $SocketListResponseCopyWith<$Res> {
  factory _$$SocketListResponseImplCopyWith(_$SocketListResponseImpl value,
          $Res Function(_$SocketListResponseImpl) then) =
      __$$SocketListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<SocketItem> items,
      String? nextToken});
}

/// @nodoc
class __$$SocketListResponseImplCopyWithImpl<$Res>
    extends _$SocketListResponseCopyWithImpl<$Res, _$SocketListResponseImpl>
    implements _$$SocketListResponseImplCopyWith<$Res> {
  __$$SocketListResponseImplCopyWithImpl(_$SocketListResponseImpl _value,
      $Res Function(_$SocketListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? nextToken = freezed,
  }) {
    return _then(_$SocketListResponseImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SocketItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketListResponseImpl implements _SocketListResponse {
  const _$SocketListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<SocketItem> items,
      this.nextToken})
      : _items = items;

  factory _$SocketListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketListResponseImplFromJson(json);

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

  /// WebSocket情報のリスト
  final List<SocketItem> _items;

  /// WebSocket情報のリスト
  @override
  List<SocketItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// 次のリソースを取得するためのトークン
  @override
  final String? nextToken;

  @override
  String toString() {
    return 'SocketListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketListResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseId, responseTime, status,
      const DeepCollectionEquality().hash(_items), nextToken);

  /// Create a copy of SocketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketListResponseImplCopyWith<_$SocketListResponseImpl> get copyWith =>
      __$$SocketListResponseImplCopyWithImpl<_$SocketListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketListResponseImplToJson(
      this,
    );
  }
}

abstract class _SocketListResponse implements SocketListResponse {
  const factory _SocketListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<SocketItem> items,
      final String? nextToken}) = _$SocketListResponseImpl;

  factory _SocketListResponse.fromJson(Map<String, dynamic> json) =
      _$SocketListResponseImpl.fromJson;

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

  /// WebSocket情報のリスト
  @override
  List<SocketItem> get items;

  /// 次のリソースを取得するためのトークン
  @override
  String? get nextToken;

  /// Create a copy of SocketListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketListResponseImplCopyWith<_$SocketListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocketItem _$SocketItemFromJson(Map<String, dynamic> json) {
  return _SocketItem.fromJson(json);
}

/// @nodoc
mixin _$SocketItem {
  /// WebSocket ID
  dynamic get id => throw _privateConstructorUsedError;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  List<String>? get types => throw _privateConstructorUsedError;

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  String get test => throw _privateConstructorUsedError;

  /// WebSocketで受け取る配信区分
  List<String> get classifications => throw _privateConstructorUsedError;

  /// 接続状態
  /// 接続待機・期限切れ: waiting、接続中: open、接続終了: closed
  String get status => throw _privateConstructorUsedError;

  /// 作成時間、または接続開始時間
  String get start => throw _privateConstructorUsedError;

  /// WebSocketに接続するためのticket
  String? get ticket => throw _privateConstructorUsedError;

  /// 接続元IPアドレス
  String? get ipAddress => throw _privateConstructorUsedError;

  /// 接続先のWebSocketサーバー名
  String? get server => throw _privateConstructorUsedError;

  /// 接続終了時間
  String? get end => throw _privateConstructorUsedError;

  /// Ping-Pongチェック時間
  String? get ping => throw _privateConstructorUsedError;

  /// アプリケーション名
  String? get appName => throw _privateConstructorUsedError;

  /// Serializes this SocketItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketItemCopyWith<SocketItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketItemCopyWith<$Res> {
  factory $SocketItemCopyWith(
          SocketItem value, $Res Function(SocketItem) then) =
      _$SocketItemCopyWithImpl<$Res, SocketItem>;
  @useResult
  $Res call(
      {dynamic id,
      List<String>? types,
      String test,
      List<String> classifications,
      String status,
      String start,
      String? ticket,
      String? ipAddress,
      String? server,
      String? end,
      String? ping,
      String? appName});
}

/// @nodoc
class _$SocketItemCopyWithImpl<$Res, $Val extends SocketItem>
    implements $SocketItemCopyWith<$Res> {
  _$SocketItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? types = freezed,
    Object? test = null,
    Object? classifications = null,
    Object? status = null,
    Object? start = null,
    Object? ticket = freezed,
    Object? ipAddress = freezed,
    Object? server = freezed,
    Object? end = freezed,
    Object? ping = freezed,
    Object? appName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      classifications: null == classifications
          ? _value.classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      ping: freezed == ping
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as String?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketItemImplCopyWith<$Res>
    implements $SocketItemCopyWith<$Res> {
  factory _$$SocketItemImplCopyWith(
          _$SocketItemImpl value, $Res Function(_$SocketItemImpl) then) =
      __$$SocketItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      List<String>? types,
      String test,
      List<String> classifications,
      String status,
      String start,
      String? ticket,
      String? ipAddress,
      String? server,
      String? end,
      String? ping,
      String? appName});
}

/// @nodoc
class __$$SocketItemImplCopyWithImpl<$Res>
    extends _$SocketItemCopyWithImpl<$Res, _$SocketItemImpl>
    implements _$$SocketItemImplCopyWith<$Res> {
  __$$SocketItemImplCopyWithImpl(
      _$SocketItemImpl _value, $Res Function(_$SocketItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? types = freezed,
    Object? test = null,
    Object? classifications = null,
    Object? status = null,
    Object? start = null,
    Object? ticket = freezed,
    Object? ipAddress = freezed,
    Object? server = freezed,
    Object? end = freezed,
    Object? ping = freezed,
    Object? appName = freezed,
  }) {
    return _then(_$SocketItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      classifications: null == classifications
          ? _value._classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      ping: freezed == ping
          ? _value.ping
          : ping // ignore: cast_nullable_to_non_nullable
              as String?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketItemImpl implements _SocketItem {
  const _$SocketItemImpl(
      {required this.id,
      required final List<String>? types,
      required this.test,
      required final List<String> classifications,
      required this.status,
      required this.start,
      this.ticket,
      this.ipAddress,
      this.server,
      this.end,
      this.ping,
      this.appName})
      : _types = types,
        _classifications = classifications;

  factory _$SocketItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketItemImplFromJson(json);

  /// WebSocket ID
  @override
  final dynamic id;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  final List<String>? _types;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  @override
  final String test;

  /// WebSocketで受け取る配信区分
  final List<String> _classifications;

  /// WebSocketで受け取る配信区分
  @override
  List<String> get classifications {
    if (_classifications is EqualUnmodifiableListView) return _classifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classifications);
  }

  /// 接続状態
  /// 接続待機・期限切れ: waiting、接続中: open、接続終了: closed
  @override
  final String status;

  /// 作成時間、または接続開始時間
  @override
  final String start;

  /// WebSocketに接続するためのticket
  @override
  final String? ticket;

  /// 接続元IPアドレス
  @override
  final String? ipAddress;

  /// 接続先のWebSocketサーバー名
  @override
  final String? server;

  /// 接続終了時間
  @override
  final String? end;

  /// Ping-Pongチェック時間
  @override
  final String? ping;

  /// アプリケーション名
  @override
  final String? appName;

  @override
  String toString() {
    return 'SocketItem(id: $id, types: $types, test: $test, classifications: $classifications, status: $status, start: $start, ticket: $ticket, ipAddress: $ipAddress, server: $server, end: $end, ping: $ping, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketItemImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality()
                .equals(other._classifications, _classifications) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.ping, ping) || other.ping == ping) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_types),
      test,
      const DeepCollectionEquality().hash(_classifications),
      status,
      start,
      ticket,
      ipAddress,
      server,
      end,
      ping,
      appName);

  /// Create a copy of SocketItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketItemImplCopyWith<_$SocketItemImpl> get copyWith =>
      __$$SocketItemImplCopyWithImpl<_$SocketItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketItemImplToJson(
      this,
    );
  }
}

abstract class _SocketItem implements SocketItem {
  const factory _SocketItem(
      {required final dynamic id,
      required final List<String>? types,
      required final String test,
      required final List<String> classifications,
      required final String status,
      required final String start,
      final String? ticket,
      final String? ipAddress,
      final String? server,
      final String? end,
      final String? ping,
      final String? appName}) = _$SocketItemImpl;

  factory _SocketItem.fromJson(Map<String, dynamic> json) =
      _$SocketItemImpl.fromJson;

  /// WebSocket ID
  @override
  dynamic get id;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  @override
  List<String>? get types;

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  @override
  String get test;

  /// WebSocketで受け取る配信区分
  @override
  List<String> get classifications;

  /// 接続状態
  /// 接続待機・期限切れ: waiting、接続中: open、接続終了: closed
  @override
  String get status;

  /// 作成時間、または接続開始時間
  @override
  String get start;

  /// WebSocketに接続するためのticket
  @override
  String? get ticket;

  /// 接続元IPアドレス
  @override
  String? get ipAddress;

  /// 接続先のWebSocketサーバー名
  @override
  String? get server;

  /// 接続終了時間
  @override
  String? get end;

  /// Ping-Pongチェック時間
  @override
  String? get ping;

  /// アプリケーション名
  @override
  String? get appName;

  /// Create a copy of SocketItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketItemImplCopyWith<_$SocketItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
