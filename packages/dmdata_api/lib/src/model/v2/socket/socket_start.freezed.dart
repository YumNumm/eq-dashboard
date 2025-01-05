// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_start.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketStartResponse _$SocketStartResponseFromJson(Map<String, dynamic> json) {
  return _SocketStartResponse.fromJson(json);
}

/// @nodoc
mixin _$SocketStartResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// WebSocketに接続するためのticket
  String get ticket => throw _privateConstructorUsedError;

  /// WebSocketへの接続情報
  WebSocketInfo get websocket => throw _privateConstructorUsedError;

  /// WebSocketで受け取る配信区分
  List<String> get classifications => throw _privateConstructorUsedError;

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  String get test => throw _privateConstructorUsedError;

  /// WebSocketで受け取る情報フォーマット
  List<String> get formats => throw _privateConstructorUsedError;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  List<String>? get types => throw _privateConstructorUsedError;

  /// リクエストで指定したアプリ名
  String? get appName => throw _privateConstructorUsedError;

  /// Serializes this SocketStartResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketStartResponseCopyWith<SocketStartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStartResponseCopyWith<$Res> {
  factory $SocketStartResponseCopyWith(
          SocketStartResponse value, $Res Function(SocketStartResponse) then) =
      _$SocketStartResponseCopyWithImpl<$Res, SocketStartResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String ticket,
      WebSocketInfo websocket,
      List<String> classifications,
      String test,
      List<String> formats,
      List<String>? types,
      String? appName});

  $WebSocketInfoCopyWith<$Res> get websocket;
}

/// @nodoc
class _$SocketStartResponseCopyWithImpl<$Res, $Val extends SocketStartResponse>
    implements $SocketStartResponseCopyWith<$Res> {
  _$SocketStartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? ticket = null,
    Object? websocket = null,
    Object? classifications = null,
    Object? test = null,
    Object? formats = null,
    Object? types = freezed,
    Object? appName = freezed,
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
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
      websocket: null == websocket
          ? _value.websocket
          : websocket // ignore: cast_nullable_to_non_nullable
              as WebSocketInfo,
      classifications: null == classifications
          ? _value.classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      formats: null == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as List<String>,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSocketInfoCopyWith<$Res> get websocket {
    return $WebSocketInfoCopyWith<$Res>(_value.websocket, (value) {
      return _then(_value.copyWith(websocket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketStartResponseImplCopyWith<$Res>
    implements $SocketStartResponseCopyWith<$Res> {
  factory _$$SocketStartResponseImplCopyWith(_$SocketStartResponseImpl value,
          $Res Function(_$SocketStartResponseImpl) then) =
      __$$SocketStartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String ticket,
      WebSocketInfo websocket,
      List<String> classifications,
      String test,
      List<String> formats,
      List<String>? types,
      String? appName});

  @override
  $WebSocketInfoCopyWith<$Res> get websocket;
}

/// @nodoc
class __$$SocketStartResponseImplCopyWithImpl<$Res>
    extends _$SocketStartResponseCopyWithImpl<$Res, _$SocketStartResponseImpl>
    implements _$$SocketStartResponseImplCopyWith<$Res> {
  __$$SocketStartResponseImplCopyWithImpl(_$SocketStartResponseImpl _value,
      $Res Function(_$SocketStartResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? ticket = null,
    Object? websocket = null,
    Object? classifications = null,
    Object? test = null,
    Object? formats = null,
    Object? types = freezed,
    Object? appName = freezed,
  }) {
    return _then(_$SocketStartResponseImpl(
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
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
      websocket: null == websocket
          ? _value.websocket
          : websocket // ignore: cast_nullable_to_non_nullable
              as WebSocketInfo,
      classifications: null == classifications
          ? _value._classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      formats: null == formats
          ? _value._formats
          : formats // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$SocketStartResponseImpl implements _SocketStartResponse {
  const _$SocketStartResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required this.ticket,
      required this.websocket,
      required final List<String> classifications,
      required this.test,
      required final List<String> formats,
      final List<String>? types,
      this.appName})
      : _classifications = classifications,
        _formats = formats,
        _types = types;

  factory _$SocketStartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketStartResponseImplFromJson(json);

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

  /// WebSocketに接続するためのticket
  @override
  final String ticket;

  /// WebSocketへの接続情報
  @override
  final WebSocketInfo websocket;

  /// WebSocketで受け取る配信区分
  final List<String> _classifications;

  /// WebSocketで受け取る配信区分
  @override
  List<String> get classifications {
    if (_classifications is EqualUnmodifiableListView) return _classifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classifications);
  }

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  @override
  final String test;

  /// WebSocketで受け取る情報フォーマット
  final List<String> _formats;

  /// WebSocketで受け取る情報フォーマット
  @override
  List<String> get formats {
    if (_formats is EqualUnmodifiableListView) return _formats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formats);
  }

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

  /// リクエストで指定したアプリ名
  @override
  final String? appName;

  @override
  String toString() {
    return 'SocketStartResponse(responseId: $responseId, responseTime: $responseTime, status: $status, ticket: $ticket, websocket: $websocket, classifications: $classifications, test: $test, formats: $formats, types: $types, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStartResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.websocket, websocket) ||
                other.websocket == websocket) &&
            const DeepCollectionEquality()
                .equals(other._classifications, _classifications) &&
            (identical(other.test, test) || other.test == test) &&
            const DeepCollectionEquality().equals(other._formats, _formats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      responseId,
      responseTime,
      status,
      ticket,
      websocket,
      const DeepCollectionEquality().hash(_classifications),
      test,
      const DeepCollectionEquality().hash(_formats),
      const DeepCollectionEquality().hash(_types),
      appName);

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStartResponseImplCopyWith<_$SocketStartResponseImpl> get copyWith =>
      __$$SocketStartResponseImplCopyWithImpl<_$SocketStartResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketStartResponseImplToJson(
      this,
    );
  }
}

abstract class _SocketStartResponse implements SocketStartResponse {
  const factory _SocketStartResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final String ticket,
      required final WebSocketInfo websocket,
      required final List<String> classifications,
      required final String test,
      required final List<String> formats,
      final List<String>? types,
      final String? appName}) = _$SocketStartResponseImpl;

  factory _SocketStartResponse.fromJson(Map<String, dynamic> json) =
      _$SocketStartResponseImpl.fromJson;

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

  /// WebSocketに接続するためのticket
  @override
  String get ticket;

  /// WebSocketへの接続情報
  @override
  WebSocketInfo get websocket;

  /// WebSocketで受け取る配信区分
  @override
  List<String> get classifications;

  /// including の時のみ、XML電文のテストをWebsocketで受け取る
  @override
  String get test;

  /// WebSocketで受け取る情報フォーマット
  @override
  List<String> get formats;

  /// WebSocketで受け取るデータ種類コードリスト
  /// Null時は受け取る配信区分の全部を受け取る
  @override
  List<String>? get types;

  /// リクエストで指定したアプリ名
  @override
  String? get appName;

  /// Create a copy of SocketStartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStartResponseImplCopyWith<_$SocketStartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSocketInfo _$WebSocketInfoFromJson(Map<String, dynamic> json) {
  return _WebSocketInfo.fromJson(json);
}

/// @nodoc
mixin _$WebSocketInfo {
  /// WebSocketID
  int get id => throw _privateConstructorUsedError;

  /// WebSocketの接続先URLでticket付き
  String get url => throw _privateConstructorUsedError;

  /// WebSocketのProtocolで配列の要素は `dmdata.v2` 一つで固定
  List<String> get protocol => throw _privateConstructorUsedError;

  /// キーの有効時間で単位は秒。値は 300 で固定
  int get expiration => throw _privateConstructorUsedError;

  /// Serializes this WebSocketInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketInfoCopyWith<WebSocketInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketInfoCopyWith<$Res> {
  factory $WebSocketInfoCopyWith(
          WebSocketInfo value, $Res Function(WebSocketInfo) then) =
      _$WebSocketInfoCopyWithImpl<$Res, WebSocketInfo>;
  @useResult
  $Res call({int id, String url, List<String> protocol, int expiration});
}

/// @nodoc
class _$WebSocketInfoCopyWithImpl<$Res, $Val extends WebSocketInfo>
    implements $WebSocketInfoCopyWith<$Res> {
  _$WebSocketInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? protocol = null,
    Object? expiration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSocketInfoImplCopyWith<$Res>
    implements $WebSocketInfoCopyWith<$Res> {
  factory _$$WebSocketInfoImplCopyWith(
          _$WebSocketInfoImpl value, $Res Function(_$WebSocketInfoImpl) then) =
      __$$WebSocketInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, List<String> protocol, int expiration});
}

/// @nodoc
class __$$WebSocketInfoImplCopyWithImpl<$Res>
    extends _$WebSocketInfoCopyWithImpl<$Res, _$WebSocketInfoImpl>
    implements _$$WebSocketInfoImplCopyWith<$Res> {
  __$$WebSocketInfoImplCopyWithImpl(
      _$WebSocketInfoImpl _value, $Res Function(_$WebSocketInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSocketInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? protocol = null,
    Object? expiration = null,
  }) {
    return _then(_$WebSocketInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      protocol: null == protocol
          ? _value._protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as List<String>,
      expiration: null == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketInfoImpl implements _WebSocketInfo {
  const _$WebSocketInfoImpl(
      {required this.id,
      required this.url,
      required final List<String> protocol,
      required this.expiration})
      : _protocol = protocol;

  factory _$WebSocketInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketInfoImplFromJson(json);

  /// WebSocketID
  @override
  final int id;

  /// WebSocketの接続先URLでticket付き
  @override
  final String url;

  /// WebSocketのProtocolで配列の要素は `dmdata.v2` 一つで固定
  final List<String> _protocol;

  /// WebSocketのProtocolで配列の要素は `dmdata.v2` 一つで固定
  @override
  List<String> get protocol {
    if (_protocol is EqualUnmodifiableListView) return _protocol;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_protocol);
  }

  /// キーの有効時間で単位は秒。値は 300 で固定
  @override
  final int expiration;

  @override
  String toString() {
    return 'WebSocketInfo(id: $id, url: $url, protocol: $protocol, expiration: $expiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._protocol, _protocol) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url,
      const DeepCollectionEquality().hash(_protocol), expiration);

  /// Create a copy of WebSocketInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketInfoImplCopyWith<_$WebSocketInfoImpl> get copyWith =>
      __$$WebSocketInfoImplCopyWithImpl<_$WebSocketInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketInfoImplToJson(
      this,
    );
  }
}

abstract class _WebSocketInfo implements WebSocketInfo {
  const factory _WebSocketInfo(
      {required final int id,
      required final String url,
      required final List<String> protocol,
      required final int expiration}) = _$WebSocketInfoImpl;

  factory _WebSocketInfo.fromJson(Map<String, dynamic> json) =
      _$WebSocketInfoImpl.fromJson;

  /// WebSocketID
  @override
  int get id;

  /// WebSocketの接続先URLでticket付き
  @override
  String get url;

  /// WebSocketのProtocolで配列の要素は `dmdata.v2` 一つで固定
  @override
  List<String> get protocol;

  /// キーの有効時間で単位は秒。値は 300 で固定
  @override
  int get expiration;

  /// Create a copy of WebSocketInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketInfoImplCopyWith<_$WebSocketInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocketStartRequest _$SocketStartRequestFromJson(Map<String, dynamic> json) {
  return _SocketStartRequest.fromJson(json);
}

/// @nodoc
mixin _$SocketStartRequest {
  /// WebSocketで取得する配信区分を指定
  /// 電文データ 区分(API名) を指定、ファイル形式データは指定できない
  List<String> get classifications => throw _privateConstructorUsedError;

  /// 取得したいデータ種類コードを指定
  /// 最大30個まで指定可能
  @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
  @JsonKey(includeIfNull: false)
  List<String>? get types => throw _privateConstructorUsedError;

  /// テストデータを取得する場合は`including`、それ以外は`no`
  String get test => throw _privateConstructorUsedError;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  String? get appName => throw _privateConstructorUsedError;

  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  String get format => throw _privateConstructorUsedError;

  /// Serializes this SocketStartRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketStartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketStartRequestCopyWith<SocketStartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStartRequestCopyWith<$Res> {
  factory $SocketStartRequestCopyWith(
          SocketStartRequest value, $Res Function(SocketStartRequest) then) =
      _$SocketStartRequestCopyWithImpl<$Res, SocketStartRequest>;
  @useResult
  $Res call(
      {List<String> classifications,
      @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
      @JsonKey(includeIfNull: false)
      List<String>? types,
      String test,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      String? appName,
      @Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      String format});
}

/// @nodoc
class _$SocketStartRequestCopyWithImpl<$Res, $Val extends SocketStartRequest>
    implements $SocketStartRequestCopyWith<$Res> {
  _$SocketStartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketStartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classifications = null,
    Object? types = freezed,
    Object? test = null,
    Object? appName = freezed,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      classifications: null == classifications
          ? _value.classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketStartRequestImplCopyWith<$Res>
    implements $SocketStartRequestCopyWith<$Res> {
  factory _$$SocketStartRequestImplCopyWith(_$SocketStartRequestImpl value,
          $Res Function(_$SocketStartRequestImpl) then) =
      __$$SocketStartRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> classifications,
      @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
      @JsonKey(includeIfNull: false)
      List<String>? types,
      String test,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      String? appName,
      @Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      String format});
}

/// @nodoc
class __$$SocketStartRequestImplCopyWithImpl<$Res>
    extends _$SocketStartRequestCopyWithImpl<$Res, _$SocketStartRequestImpl>
    implements _$$SocketStartRequestImplCopyWith<$Res> {
  __$$SocketStartRequestImplCopyWithImpl(_$SocketStartRequestImpl _value,
      $Res Function(_$SocketStartRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketStartRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classifications = null,
    Object? types = freezed,
    Object? test = null,
    Object? appName = freezed,
    Object? format = null,
  }) {
    return _then(_$SocketStartRequestImpl(
      classifications: null == classifications
          ? _value._classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketStartRequestImpl implements _SocketStartRequest {
  const _$SocketStartRequestImpl(
      {required final List<String> classifications,
      @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
      @JsonKey(includeIfNull: false)
      required final List<String>? types,
      this.test = 'no',
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      this.appName,
      @Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      this.format = 'raw'})
      : _classifications = classifications,
        _types = types;

  factory _$SocketStartRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketStartRequestImplFromJson(json);

  /// WebSocketで取得する配信区分を指定
  /// 電文データ 区分(API名) を指定、ファイル形式データは指定できない
  final List<String> _classifications;

  /// WebSocketで取得する配信区分を指定
  /// 電文データ 区分(API名) を指定、ファイル形式データは指定できない
  @override
  List<String> get classifications {
    if (_classifications is EqualUnmodifiableListView) return _classifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classifications);
  }

  /// 取得したいデータ種類コードを指定
  /// 最大30個まで指定可能
  final List<String>? _types;

  /// 取得したいデータ種類コードを指定
  /// 最大30個まで指定可能
  @override
  @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
  @JsonKey(includeIfNull: false)
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// テストデータを取得する場合は`including`、それ以外は`no`
  @override
  @JsonKey()
  final String test;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @override
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  final String? appName;

  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @override
  @JsonKey()
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  final String format;

  @override
  String toString() {
    return 'SocketStartRequest(classifications: $classifications, types: $types, test: $test, appName: $appName, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStartRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._classifications, _classifications) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_classifications),
      const DeepCollectionEquality().hash(_types),
      test,
      appName,
      format);

  /// Create a copy of SocketStartRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStartRequestImplCopyWith<_$SocketStartRequestImpl> get copyWith =>
      __$$SocketStartRequestImplCopyWithImpl<_$SocketStartRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketStartRequestImplToJson(
      this,
    );
  }
}

abstract class _SocketStartRequest implements SocketStartRequest {
  const factory _SocketStartRequest(
      {required final List<String> classifications,
      @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
      @JsonKey(includeIfNull: false)
      required final List<String>? types,
      final String test,
      @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
      final String? appName,
      @Assert('format == "raw" || format == "json"',
          'formatは"raw"または"json"でなければなりません')
      final String format}) = _$SocketStartRequestImpl;

  factory _SocketStartRequest.fromJson(Map<String, dynamic> json) =
      _$SocketStartRequestImpl.fromJson;

  /// WebSocketで取得する配信区分を指定
  /// 電文データ 区分(API名) を指定、ファイル形式データは指定できない
  @override
  List<String> get classifications;

  /// 取得したいデータ種類コードを指定
  /// 最大30個まで指定可能
  @override
  @Assert('types.length <= 30', 'typesの要素数は30個以下でなければなりません')
  @JsonKey(includeIfNull: false)
  List<String>? get types;

  /// テストデータを取得する場合は`including`、それ以外は`no`
  @override
  String get test;

  /// アプリケーション名を指定
  /// 最大24byteまで
  @override
  @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
  String? get appName;

  /// 取得したいデータのフォーマットを指定
  /// `raw`または`json`を指定
  @override
  @Assert(
      'format == "raw" || format == "json"', 'formatは"raw"または"json"でなければなりません')
  String get format;

  /// Create a copy of SocketStartRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketStartRequestImplCopyWith<_$SocketStartRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
