// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jmafile_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JmaFileListResponse _$JmaFileListResponseFromJson(Map<String, dynamic> json) {
  return _JmaFileListResponse.fromJson(json);
}

/// @nodoc
mixin _$JmaFileListResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// ファイル形式データリスト
  List<JmaFileListItem> get items => throw _privateConstructorUsedError;

  /// PuLL時に使用する
  String get nextPooling => throw _privateConstructorUsedError;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  int get nextPoolingInterval => throw _privateConstructorUsedError;

  /// 次のリソースがある場合に出現
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this JmaFileListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaFileListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaFileListResponseCopyWith<JmaFileListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaFileListResponseCopyWith<$Res> {
  factory $JmaFileListResponseCopyWith(
          JmaFileListResponse value, $Res Function(JmaFileListResponse) then) =
      _$JmaFileListResponseCopyWithImpl<$Res, JmaFileListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<JmaFileListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class _$JmaFileListResponseCopyWithImpl<$Res, $Val extends JmaFileListResponse>
    implements $JmaFileListResponseCopyWith<$Res> {
  _$JmaFileListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaFileListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? nextPooling = null,
    Object? nextPoolingInterval = null,
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
              as List<JmaFileListItem>,
      nextPooling: null == nextPooling
          ? _value.nextPooling
          : nextPooling // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoolingInterval: null == nextPoolingInterval
          ? _value.nextPoolingInterval
          : nextPoolingInterval // ignore: cast_nullable_to_non_nullable
              as int,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JmaFileListResponseImplCopyWith<$Res>
    implements $JmaFileListResponseCopyWith<$Res> {
  factory _$$JmaFileListResponseImplCopyWith(_$JmaFileListResponseImpl value,
          $Res Function(_$JmaFileListResponseImpl) then) =
      __$$JmaFileListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<JmaFileListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class __$$JmaFileListResponseImplCopyWithImpl<$Res>
    extends _$JmaFileListResponseCopyWithImpl<$Res, _$JmaFileListResponseImpl>
    implements _$$JmaFileListResponseImplCopyWith<$Res> {
  __$$JmaFileListResponseImplCopyWithImpl(_$JmaFileListResponseImpl _value,
      $Res Function(_$JmaFileListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaFileListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? nextPooling = null,
    Object? nextPoolingInterval = null,
    Object? nextToken = freezed,
  }) {
    return _then(_$JmaFileListResponseImpl(
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
              as List<JmaFileListItem>,
      nextPooling: null == nextPooling
          ? _value.nextPooling
          : nextPooling // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoolingInterval: null == nextPoolingInterval
          ? _value.nextPoolingInterval
          : nextPoolingInterval // ignore: cast_nullable_to_non_nullable
              as int,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaFileListResponseImpl implements _JmaFileListResponse {
  const _$JmaFileListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<JmaFileListItem> items,
      required this.nextPooling,
      required this.nextPoolingInterval,
      this.nextToken})
      : _items = items;

  factory _$JmaFileListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaFileListResponseImplFromJson(json);

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

  /// ファイル形式データリスト
  final List<JmaFileListItem> _items;

  /// ファイル形式データリスト
  @override
  List<JmaFileListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// PuLL時に使用する
  @override
  final String nextPooling;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  @override
  final int nextPoolingInterval;

  /// 次のリソースがある場合に出現
  @override
  final String? nextToken;

  @override
  String toString() {
    return 'JmaFileListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, nextPooling: $nextPooling, nextPoolingInterval: $nextPoolingInterval, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaFileListResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextPooling, nextPooling) ||
                other.nextPooling == nextPooling) &&
            (identical(other.nextPoolingInterval, nextPoolingInterval) ||
                other.nextPoolingInterval == nextPoolingInterval) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      responseId,
      responseTime,
      status,
      const DeepCollectionEquality().hash(_items),
      nextPooling,
      nextPoolingInterval,
      nextToken);

  /// Create a copy of JmaFileListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaFileListResponseImplCopyWith<_$JmaFileListResponseImpl> get copyWith =>
      __$$JmaFileListResponseImplCopyWithImpl<_$JmaFileListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaFileListResponseImplToJson(
      this,
    );
  }
}

abstract class _JmaFileListResponse implements JmaFileListResponse {
  const factory _JmaFileListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<JmaFileListItem> items,
      required final String nextPooling,
      required final int nextPoolingInterval,
      final String? nextToken}) = _$JmaFileListResponseImpl;

  factory _JmaFileListResponse.fromJson(Map<String, dynamic> json) =
      _$JmaFileListResponseImpl.fromJson;

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

  /// ファイル形式データリスト
  @override
  List<JmaFileListItem> get items;

  /// PuLL時に使用する
  @override
  String get nextPooling;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  @override
  int get nextPoolingInterval;

  /// 次のリソースがある場合に出現
  @override
  String? get nextToken;

  /// Create a copy of JmaFileListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaFileListResponseImplCopyWith<_$JmaFileListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JmaFileListItem _$JmaFileListItemFromJson(Map<String, dynamic> json) {
  return _JmaFileListItem.fromJson(json);
}

/// @nodoc
mixin _$JmaFileListItem {
  /// ファイル形式データ受信通番
  String get serial => throw _privateConstructorUsedError;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  String get id => throw _privateConstructorUsedError;

  /// 配信区分（API名）
  String get classification => throw _privateConstructorUsedError;

  /// ヘッダ情報
  /// format が `concat` の場合、親ファイルのほか子データのヘッダも入る（要素が2個以上）
  List<JmaFileHeader> get headers => throw _privateConstructorUsedError;

  /// 受信時刻
  String get receivedTime => throw _privateConstructorUsedError;

  /// データのフォーマット（`headers[0].format` とおなじ）
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  /// `concat` については、`.tar` 形式のファイルを、データ本体を連結したもの
  String get format => throw _privateConstructorUsedError;

  /// データURL
  String get url => throw _privateConstructorUsedError;

  /// データの圧縮形式
  /// 取りうる値は、`gzip`、`zip`、null
  String? get compression => throw _privateConstructorUsedError;

  /// Serializes this JmaFileListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaFileListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaFileListItemCopyWith<JmaFileListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaFileListItemCopyWith<$Res> {
  factory $JmaFileListItemCopyWith(
          JmaFileListItem value, $Res Function(JmaFileListItem) then) =
      _$JmaFileListItemCopyWithImpl<$Res, JmaFileListItem>;
  @useResult
  $Res call(
      {String serial,
      String id,
      String classification,
      List<JmaFileHeader> headers,
      String receivedTime,
      String format,
      String url,
      String? compression});
}

/// @nodoc
class _$JmaFileListItemCopyWithImpl<$Res, $Val extends JmaFileListItem>
    implements $JmaFileListItemCopyWith<$Res> {
  _$JmaFileListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaFileListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? id = null,
    Object? classification = null,
    Object? headers = null,
    Object? receivedTime = null,
    Object? format = null,
    Object? url = null,
    Object? compression = freezed,
  }) {
    return _then(_value.copyWith(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<JmaFileHeader>,
      receivedTime: null == receivedTime
          ? _value.receivedTime
          : receivedTime // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      compression: freezed == compression
          ? _value.compression
          : compression // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JmaFileListItemImplCopyWith<$Res>
    implements $JmaFileListItemCopyWith<$Res> {
  factory _$$JmaFileListItemImplCopyWith(_$JmaFileListItemImpl value,
          $Res Function(_$JmaFileListItemImpl) then) =
      __$$JmaFileListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serial,
      String id,
      String classification,
      List<JmaFileHeader> headers,
      String receivedTime,
      String format,
      String url,
      String? compression});
}

/// @nodoc
class __$$JmaFileListItemImplCopyWithImpl<$Res>
    extends _$JmaFileListItemCopyWithImpl<$Res, _$JmaFileListItemImpl>
    implements _$$JmaFileListItemImplCopyWith<$Res> {
  __$$JmaFileListItemImplCopyWithImpl(
      _$JmaFileListItemImpl _value, $Res Function(_$JmaFileListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaFileListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
    Object? id = null,
    Object? classification = null,
    Object? headers = null,
    Object? receivedTime = null,
    Object? format = null,
    Object? url = null,
    Object? compression = freezed,
  }) {
    return _then(_$JmaFileListItemImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<JmaFileHeader>,
      receivedTime: null == receivedTime
          ? _value.receivedTime
          : receivedTime // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      compression: freezed == compression
          ? _value.compression
          : compression // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaFileListItemImpl implements _JmaFileListItem {
  const _$JmaFileListItemImpl(
      {required this.serial,
      required this.id,
      required this.classification,
      required final List<JmaFileHeader> headers,
      required this.receivedTime,
      required this.format,
      required this.url,
      this.compression})
      : _headers = headers;

  factory _$JmaFileListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaFileListItemImplFromJson(json);

  /// ファイル形式データ受信通番
  @override
  final String serial;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  @override
  final String id;

  /// 配信区分（API名）
  @override
  final String classification;

  /// ヘッダ情報
  /// format が `concat` の場合、親ファイルのほか子データのヘッダも入る（要素が2個以上）
  final List<JmaFileHeader> _headers;

  /// ヘッダ情報
  /// format が `concat` の場合、親ファイルのほか子データのヘッダも入る（要素が2個以上）
  @override
  List<JmaFileHeader> get headers {
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headers);
  }

  /// 受信時刻
  @override
  final String receivedTime;

  /// データのフォーマット（`headers[0].format` とおなじ）
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  /// `concat` については、`.tar` 形式のファイルを、データ本体を連結したもの
  @override
  final String format;

  /// データURL
  @override
  final String url;

  /// データの圧縮形式
  /// 取りうる値は、`gzip`、`zip`、null
  @override
  final String? compression;

  @override
  String toString() {
    return 'JmaFileListItem(serial: $serial, id: $id, classification: $classification, headers: $headers, receivedTime: $receivedTime, format: $format, url: $url, compression: $compression)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaFileListItemImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.receivedTime, receivedTime) ||
                other.receivedTime == receivedTime) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.compression, compression) ||
                other.compression == compression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      serial,
      id,
      classification,
      const DeepCollectionEquality().hash(_headers),
      receivedTime,
      format,
      url,
      compression);

  /// Create a copy of JmaFileListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaFileListItemImplCopyWith<_$JmaFileListItemImpl> get copyWith =>
      __$$JmaFileListItemImplCopyWithImpl<_$JmaFileListItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaFileListItemImplToJson(
      this,
    );
  }
}

abstract class _JmaFileListItem implements JmaFileListItem {
  const factory _JmaFileListItem(
      {required final String serial,
      required final String id,
      required final String classification,
      required final List<JmaFileHeader> headers,
      required final String receivedTime,
      required final String format,
      required final String url,
      final String? compression}) = _$JmaFileListItemImpl;

  factory _JmaFileListItem.fromJson(Map<String, dynamic> json) =
      _$JmaFileListItemImpl.fromJson;

  /// ファイル形式データ受信通番
  @override
  String get serial;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  @override
  String get id;

  /// 配信区分（API名）
  @override
  String get classification;

  /// ヘッダ情報
  /// format が `concat` の場合、親ファイルのほか子データのヘッダも入る（要素が2個以上）
  @override
  List<JmaFileHeader> get headers;

  /// 受信時刻
  @override
  String get receivedTime;

  /// データのフォーマット（`headers[0].format` とおなじ）
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  /// `concat` については、`.tar` 形式のファイルを、データ本体を連結したもの
  @override
  String get format;

  /// データURL
  @override
  String get url;

  /// データの圧縮形式
  /// 取りうる値は、`gzip`、`zip`、null
  @override
  String? get compression;

  /// Create a copy of JmaFileListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaFileListItemImplCopyWith<_$JmaFileListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JmaFileHeader _$JmaFileHeaderFromJson(Map<String, dynamic> json) {
  return _JmaFileHeader.fromJson(json);
}

/// @nodoc
mixin _$JmaFileHeader {
  /// データの内容の代表的な時刻
  String get time => throw _privateConstructorUsedError;

  /// フラグ情報
  JmaFileFlags get flags => throw _privateConstructorUsedError;

  /// 英字発信官署名
  String get author => throw _privateConstructorUsedError;

  /// データのフォーマット
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  String get format => throw _privateConstructorUsedError;

  /// データのサイズ
  int get length => throw _privateConstructorUsedError;

  /// 受信データの属性値（データ識別名を`_`で分割した配列）
  List<String> get values => throw _privateConstructorUsedError;

  /// 受信ファイル名
  String get filename => throw _privateConstructorUsedError;

  /// Serializes this JmaFileHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaFileHeaderCopyWith<JmaFileHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaFileHeaderCopyWith<$Res> {
  factory $JmaFileHeaderCopyWith(
          JmaFileHeader value, $Res Function(JmaFileHeader) then) =
      _$JmaFileHeaderCopyWithImpl<$Res, JmaFileHeader>;
  @useResult
  $Res call(
      {String time,
      JmaFileFlags flags,
      String author,
      String format,
      int length,
      List<String> values,
      String filename});

  $JmaFileFlagsCopyWith<$Res> get flags;
}

/// @nodoc
class _$JmaFileHeaderCopyWithImpl<$Res, $Val extends JmaFileHeader>
    implements $JmaFileHeaderCopyWith<$Res> {
  _$JmaFileHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? flags = null,
    Object? author = null,
    Object? format = null,
    Object? length = null,
    Object? values = null,
    Object? filename = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as JmaFileFlags,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JmaFileFlagsCopyWith<$Res> get flags {
    return $JmaFileFlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JmaFileHeaderImplCopyWith<$Res>
    implements $JmaFileHeaderCopyWith<$Res> {
  factory _$$JmaFileHeaderImplCopyWith(
          _$JmaFileHeaderImpl value, $Res Function(_$JmaFileHeaderImpl) then) =
      __$$JmaFileHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      JmaFileFlags flags,
      String author,
      String format,
      int length,
      List<String> values,
      String filename});

  @override
  $JmaFileFlagsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$JmaFileHeaderImplCopyWithImpl<$Res>
    extends _$JmaFileHeaderCopyWithImpl<$Res, _$JmaFileHeaderImpl>
    implements _$$JmaFileHeaderImplCopyWith<$Res> {
  __$$JmaFileHeaderImplCopyWithImpl(
      _$JmaFileHeaderImpl _value, $Res Function(_$JmaFileHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? flags = null,
    Object? author = null,
    Object? format = null,
    Object? length = null,
    Object? values = null,
    Object? filename = null,
  }) {
    return _then(_$JmaFileHeaderImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as JmaFileFlags,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaFileHeaderImpl implements _JmaFileHeader {
  const _$JmaFileHeaderImpl(
      {required this.time,
      required this.flags,
      required this.author,
      required this.format,
      required this.length,
      required final List<String> values,
      required this.filename})
      : _values = values;

  factory _$JmaFileHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaFileHeaderImplFromJson(json);

  /// データの内容の代表的な時刻
  @override
  final String time;

  /// フラグ情報
  @override
  final JmaFileFlags flags;

  /// 英字発信官署名
  @override
  final String author;

  /// データのフォーマット
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  @override
  final String format;

  /// データのサイズ
  @override
  final int length;

  /// 受信データの属性値（データ識別名を`_`で分割した配列）
  final List<String> _values;

  /// 受信データの属性値（データ識別名を`_`で分割した配列）
  @override
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// 受信ファイル名
  @override
  final String filename;

  @override
  String toString() {
    return 'JmaFileHeader(time: $time, flags: $flags, author: $author, format: $format, length: $length, values: $values, filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaFileHeaderImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, flags, author, format,
      length, const DeepCollectionEquality().hash(_values), filename);

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaFileHeaderImplCopyWith<_$JmaFileHeaderImpl> get copyWith =>
      __$$JmaFileHeaderImplCopyWithImpl<_$JmaFileHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaFileHeaderImplToJson(
      this,
    );
  }
}

abstract class _JmaFileHeader implements JmaFileHeader {
  const factory _JmaFileHeader(
      {required final String time,
      required final JmaFileFlags flags,
      required final String author,
      required final String format,
      required final int length,
      required final List<String> values,
      required final String filename}) = _$JmaFileHeaderImpl;

  factory _JmaFileHeader.fromJson(Map<String, dynamic> json) =
      _$JmaFileHeaderImpl.fromJson;

  /// データの内容の代表的な時刻
  @override
  String get time;

  /// フラグ情報
  @override
  JmaFileFlags get flags;

  /// 英字発信官署名
  @override
  String get author;

  /// データのフォーマット
  /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
  @override
  String get format;

  /// データのサイズ
  @override
  int get length;

  /// 受信データの属性値（データ識別名を`_`で分割した配列）
  @override
  List<String> get values;

  /// 受信ファイル名
  @override
  String get filename;

  /// Create a copy of JmaFileHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaFileHeaderImplCopyWith<_$JmaFileHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JmaFileFlags _$JmaFileFlagsFromJson(Map<String, dynamic> json) {
  return _JmaFileFlags.fromJson(json);
}

/// @nodoc
mixin _$JmaFileFlags {
  /// 作成プロダクトモード、`Z` のみが入る
  /// `Z`: ローカル情報識別子
  String get product => throw _privateConstructorUsedError;

  /// 発信元識別で、`headers[].author`のコード種別を示す、取りうる値は`C`、`J`
  /// `C`: WMO 英字発信官署名
  /// `J`: 気象庁作成の英字発信官署名
  String get oflag => throw _privateConstructorUsedError;

  /// データ属性を表すが、現在のところ使用していない
  String? get productidentifier => throw _privateConstructorUsedError;

  /// Serializes this JmaFileFlags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaFileFlags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaFileFlagsCopyWith<JmaFileFlags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaFileFlagsCopyWith<$Res> {
  factory $JmaFileFlagsCopyWith(
          JmaFileFlags value, $Res Function(JmaFileFlags) then) =
      _$JmaFileFlagsCopyWithImpl<$Res, JmaFileFlags>;
  @useResult
  $Res call({String product, String oflag, String? productidentifier});
}

/// @nodoc
class _$JmaFileFlagsCopyWithImpl<$Res, $Val extends JmaFileFlags>
    implements $JmaFileFlagsCopyWith<$Res> {
  _$JmaFileFlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaFileFlags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? oflag = null,
    Object? productidentifier = freezed,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      oflag: null == oflag
          ? _value.oflag
          : oflag // ignore: cast_nullable_to_non_nullable
              as String,
      productidentifier: freezed == productidentifier
          ? _value.productidentifier
          : productidentifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JmaFileFlagsImplCopyWith<$Res>
    implements $JmaFileFlagsCopyWith<$Res> {
  factory _$$JmaFileFlagsImplCopyWith(
          _$JmaFileFlagsImpl value, $Res Function(_$JmaFileFlagsImpl) then) =
      __$$JmaFileFlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String product, String oflag, String? productidentifier});
}

/// @nodoc
class __$$JmaFileFlagsImplCopyWithImpl<$Res>
    extends _$JmaFileFlagsCopyWithImpl<$Res, _$JmaFileFlagsImpl>
    implements _$$JmaFileFlagsImplCopyWith<$Res> {
  __$$JmaFileFlagsImplCopyWithImpl(
      _$JmaFileFlagsImpl _value, $Res Function(_$JmaFileFlagsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaFileFlags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? oflag = null,
    Object? productidentifier = freezed,
  }) {
    return _then(_$JmaFileFlagsImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      oflag: null == oflag
          ? _value.oflag
          : oflag // ignore: cast_nullable_to_non_nullable
              as String,
      productidentifier: freezed == productidentifier
          ? _value.productidentifier
          : productidentifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaFileFlagsImpl implements _JmaFileFlags {
  const _$JmaFileFlagsImpl(
      {required this.product, required this.oflag, this.productidentifier});

  factory _$JmaFileFlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaFileFlagsImplFromJson(json);

  /// 作成プロダクトモード、`Z` のみが入る
  /// `Z`: ローカル情報識別子
  @override
  final String product;

  /// 発信元識別で、`headers[].author`のコード種別を示す、取りうる値は`C`、`J`
  /// `C`: WMO 英字発信官署名
  /// `J`: 気象庁作成の英字発信官署名
  @override
  final String oflag;

  /// データ属性を表すが、現在のところ使用していない
  @override
  final String? productidentifier;

  @override
  String toString() {
    return 'JmaFileFlags(product: $product, oflag: $oflag, productidentifier: $productidentifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaFileFlagsImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.oflag, oflag) || other.oflag == oflag) &&
            (identical(other.productidentifier, productidentifier) ||
                other.productidentifier == productidentifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, product, oflag, productidentifier);

  /// Create a copy of JmaFileFlags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaFileFlagsImplCopyWith<_$JmaFileFlagsImpl> get copyWith =>
      __$$JmaFileFlagsImplCopyWithImpl<_$JmaFileFlagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaFileFlagsImplToJson(
      this,
    );
  }
}

abstract class _JmaFileFlags implements JmaFileFlags {
  const factory _JmaFileFlags(
      {required final String product,
      required final String oflag,
      final String? productidentifier}) = _$JmaFileFlagsImpl;

  factory _JmaFileFlags.fromJson(Map<String, dynamic> json) =
      _$JmaFileFlagsImpl.fromJson;

  /// 作成プロダクトモード、`Z` のみが入る
  /// `Z`: ローカル情報識別子
  @override
  String get product;

  /// 発信元識別で、`headers[].author`のコード種別を示す、取りうる値は`C`、`J`
  /// `C`: WMO 英字発信官署名
  /// `J`: 気象庁作成の英字発信官署名
  @override
  String get oflag;

  /// データ属性を表すが、現在のところ使用していない
  @override
  String? get productidentifier;

  /// Create a copy of JmaFileFlags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaFileFlagsImplCopyWith<_$JmaFileFlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
