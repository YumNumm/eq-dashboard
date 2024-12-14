// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TelegramListResponse _$TelegramListResponseFromJson(Map<String, dynamic> json) {
  return _TelegramListResponse.fromJson(json);
}

/// @nodoc
mixin _$TelegramListResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// 電文情報リスト
  List<TelegramListItem> get items => throw _privateConstructorUsedError;

  /// PuLL時に使用する
  String get nextPooling => throw _privateConstructorUsedError;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  int get nextPoolingInterval => throw _privateConstructorUsedError;

  /// 次のリソースがある場合に出現
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this TelegramListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramListResponseCopyWith<TelegramListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramListResponseCopyWith<$Res> {
  factory $TelegramListResponseCopyWith(TelegramListResponse value,
          $Res Function(TelegramListResponse) then) =
      _$TelegramListResponseCopyWithImpl<$Res, TelegramListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<TelegramListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class _$TelegramListResponseCopyWithImpl<$Res,
        $Val extends TelegramListResponse>
    implements $TelegramListResponseCopyWith<$Res> {
  _$TelegramListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramListResponse
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
              as List<TelegramListItem>,
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
abstract class _$$TelegramListResponseImplCopyWith<$Res>
    implements $TelegramListResponseCopyWith<$Res> {
  factory _$$TelegramListResponseImplCopyWith(_$TelegramListResponseImpl value,
          $Res Function(_$TelegramListResponseImpl) then) =
      __$$TelegramListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<TelegramListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class __$$TelegramListResponseImplCopyWithImpl<$Res>
    extends _$TelegramListResponseCopyWithImpl<$Res, _$TelegramListResponseImpl>
    implements _$$TelegramListResponseImplCopyWith<$Res> {
  __$$TelegramListResponseImplCopyWithImpl(_$TelegramListResponseImpl _value,
      $Res Function(_$TelegramListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramListResponse
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
    return _then(_$TelegramListResponseImpl(
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
              as List<TelegramListItem>,
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
class _$TelegramListResponseImpl implements _TelegramListResponse {
  const _$TelegramListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<TelegramListItem> items,
      required this.nextPooling,
      required this.nextPoolingInterval,
      this.nextToken})
      : _items = items;

  factory _$TelegramListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramListResponseImplFromJson(json);

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

  /// 電文情報リスト
  final List<TelegramListItem> _items;

  /// 電文情報リスト
  @override
  List<TelegramListItem> get items {
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
    return 'TelegramListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, nextPooling: $nextPooling, nextPoolingInterval: $nextPoolingInterval, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramListResponseImpl &&
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

  /// Create a copy of TelegramListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramListResponseImplCopyWith<_$TelegramListResponseImpl>
      get copyWith =>
          __$$TelegramListResponseImplCopyWithImpl<_$TelegramListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramListResponseImplToJson(
      this,
    );
  }
}

abstract class _TelegramListResponse implements TelegramListResponse {
  const factory _TelegramListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<TelegramListItem> items,
      required final String nextPooling,
      required final int nextPoolingInterval,
      final String? nextToken}) = _$TelegramListResponseImpl;

  factory _TelegramListResponse.fromJson(Map<String, dynamic> json) =
      _$TelegramListResponseImpl.fromJson;

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

  /// 電文情報リスト
  @override
  List<TelegramListItem> get items;

  /// PuLL時に使用する
  @override
  String get nextPooling;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  @override
  int get nextPoolingInterval;

  /// 次のリソースがある場合に出現
  @override
  String? get nextToken;

  /// Create a copy of TelegramListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramListResponseImplCopyWith<_$TelegramListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TelegramListItem _$TelegramListItemFromJson(Map<String, dynamic> json) {
  return _TelegramListItem.fromJson(json);
}

/// @nodoc
mixin _$TelegramListItem {
  /// 電文受信通番
  dynamic get serial => throw _privateConstructorUsedError;

  /// 配信区分により変化。取りうる値は telegram.earthquake, telegram.volcano, telegram.weather, telegram.scheduled
  String get classification => throw _privateConstructorUsedError;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  String get id => throw _privateConstructorUsedError;

  /// ヘッダ情報
  TelegramHead get head => throw _privateConstructorUsedError;

  /// 受信時刻
  String get receivedTime => throw _privateConstructorUsedError;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  String get format => throw _privateConstructorUsedError;

  /// データURL
  String get url => throw _privateConstructorUsedError;

  /// XML電文Control,Head情報
  XmlReport? get xmlReport => throw _privateConstructorUsedError;

  /// Serializes this TelegramListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramListItemCopyWith<TelegramListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramListItemCopyWith<$Res> {
  factory $TelegramListItemCopyWith(
          TelegramListItem value, $Res Function(TelegramListItem) then) =
      _$TelegramListItemCopyWithImpl<$Res, TelegramListItem>;
  @useResult
  $Res call(
      {dynamic serial,
      String classification,
      String id,
      TelegramHead head,
      String receivedTime,
      String format,
      String url,
      XmlReport? xmlReport});

  $TelegramHeadCopyWith<$Res> get head;
  $XmlReportCopyWith<$Res>? get xmlReport;
}

/// @nodoc
class _$TelegramListItemCopyWithImpl<$Res, $Val extends TelegramListItem>
    implements $TelegramListItemCopyWith<$Res> {
  _$TelegramListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = freezed,
    Object? classification = null,
    Object? id = null,
    Object? head = null,
    Object? receivedTime = null,
    Object? format = null,
    Object? url = null,
    Object? xmlReport = freezed,
  }) {
    return _then(_value.copyWith(
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramHead,
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
      xmlReport: freezed == xmlReport
          ? _value.xmlReport
          : xmlReport // ignore: cast_nullable_to_non_nullable
              as XmlReport?,
    ) as $Val);
  }

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramHeadCopyWith<$Res> get head {
    return $TelegramHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XmlReportCopyWith<$Res>? get xmlReport {
    if (_value.xmlReport == null) {
      return null;
    }

    return $XmlReportCopyWith<$Res>(_value.xmlReport!, (value) {
      return _then(_value.copyWith(xmlReport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelegramListItemImplCopyWith<$Res>
    implements $TelegramListItemCopyWith<$Res> {
  factory _$$TelegramListItemImplCopyWith(_$TelegramListItemImpl value,
          $Res Function(_$TelegramListItemImpl) then) =
      __$$TelegramListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic serial,
      String classification,
      String id,
      TelegramHead head,
      String receivedTime,
      String format,
      String url,
      XmlReport? xmlReport});

  @override
  $TelegramHeadCopyWith<$Res> get head;
  @override
  $XmlReportCopyWith<$Res>? get xmlReport;
}

/// @nodoc
class __$$TelegramListItemImplCopyWithImpl<$Res>
    extends _$TelegramListItemCopyWithImpl<$Res, _$TelegramListItemImpl>
    implements _$$TelegramListItemImplCopyWith<$Res> {
  __$$TelegramListItemImplCopyWithImpl(_$TelegramListItemImpl _value,
      $Res Function(_$TelegramListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = freezed,
    Object? classification = null,
    Object? id = null,
    Object? head = null,
    Object? receivedTime = null,
    Object? format = null,
    Object? url = null,
    Object? xmlReport = freezed,
  }) {
    return _then(_$TelegramListItemImpl(
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as dynamic,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramHead,
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
      xmlReport: freezed == xmlReport
          ? _value.xmlReport
          : xmlReport // ignore: cast_nullable_to_non_nullable
              as XmlReport?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramListItemImpl implements _TelegramListItem {
  const _$TelegramListItemImpl(
      {required this.serial,
      required this.classification,
      required this.id,
      required this.head,
      required this.receivedTime,
      required this.format,
      required this.url,
      this.xmlReport});

  factory _$TelegramListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramListItemImplFromJson(json);

  /// 電文受信通番
  @override
  final dynamic serial;

  /// 配信区分により変化。取りうる値は telegram.earthquake, telegram.volcano, telegram.weather, telegram.scheduled
  @override
  final String classification;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  @override
  final String id;

  /// ヘッダ情報
  @override
  final TelegramHead head;

  /// 受信時刻
  @override
  final String receivedTime;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  @override
  final String format;

  /// データURL
  @override
  final String url;

  /// XML電文Control,Head情報
  @override
  final XmlReport? xmlReport;

  @override
  String toString() {
    return 'TelegramListItem(serial: $serial, classification: $classification, id: $id, head: $head, receivedTime: $receivedTime, format: $format, url: $url, xmlReport: $xmlReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramListItemImpl &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.receivedTime, receivedTime) ||
                other.receivedTime == receivedTime) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.xmlReport, xmlReport) ||
                other.xmlReport == xmlReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serial),
      classification,
      id,
      head,
      receivedTime,
      format,
      url,
      xmlReport);

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramListItemImplCopyWith<_$TelegramListItemImpl> get copyWith =>
      __$$TelegramListItemImplCopyWithImpl<_$TelegramListItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramListItemImplToJson(
      this,
    );
  }
}

abstract class _TelegramListItem implements TelegramListItem {
  const factory _TelegramListItem(
      {required final dynamic serial,
      required final String classification,
      required final String id,
      required final TelegramHead head,
      required final String receivedTime,
      required final String format,
      required final String url,
      final XmlReport? xmlReport}) = _$TelegramListItemImpl;

  factory _TelegramListItem.fromJson(Map<String, dynamic> json) =
      _$TelegramListItemImpl.fromJson;

  /// 電文受信通番
  @override
  dynamic get serial;

  /// 配信区分により変化。取りうる値は telegram.earthquake, telegram.volcano, telegram.weather, telegram.scheduled
  @override
  String get classification;

  /// データを区別するSHA512のハッシュBASE64URLエンコードID
  @override
  String get id;

  /// ヘッダ情報
  @override
  TelegramHead get head;

  /// 受信時刻
  @override
  String get receivedTime;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  @override
  String get format;

  /// データURL
  @override
  String get url;

  /// XML電文Control,Head情報
  @override
  XmlReport? get xmlReport;

  /// Create a copy of TelegramListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramListItemImplCopyWith<_$TelegramListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelegramHead _$TelegramHeadFromJson(Map<String, dynamic> json) {
  return _TelegramHead.fromJson(json);
}

/// @nodoc
mixin _$TelegramHead {
  /// データ種類コード
  String get type => throw _privateConstructorUsedError;

  /// 発表英字官署名
  String get author => throw _privateConstructorUsedError;

  /// 基点時刻
  String get time => throw _privateConstructorUsedError;

  /// 訓練、試験等のテスト等電文���どうかを示す
  bool get test => throw _privateConstructorUsedError;

  /// 対象観測地点コード
  String? get target => throw _privateConstructorUsedError;

  /// 指示コード
  String? get designation => throw _privateConstructorUsedError;

  /// Serializes this TelegramHead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramHeadCopyWith<TelegramHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramHeadCopyWith<$Res> {
  factory $TelegramHeadCopyWith(
          TelegramHead value, $Res Function(TelegramHead) then) =
      _$TelegramHeadCopyWithImpl<$Res, TelegramHead>;
  @useResult
  $Res call(
      {String type,
      String author,
      String time,
      bool test,
      String? target,
      String? designation});
}

/// @nodoc
class _$TelegramHeadCopyWithImpl<$Res, $Val extends TelegramHead>
    implements $TelegramHeadCopyWith<$Res> {
  _$TelegramHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramHead
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramHeadImplCopyWith<$Res>
    implements $TelegramHeadCopyWith<$Res> {
  factory _$$TelegramHeadImplCopyWith(
          _$TelegramHeadImpl value, $Res Function(_$TelegramHeadImpl) then) =
      __$$TelegramHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String author,
      String time,
      bool test,
      String? target,
      String? designation});
}

/// @nodoc
class __$$TelegramHeadImplCopyWithImpl<$Res>
    extends _$TelegramHeadCopyWithImpl<$Res, _$TelegramHeadImpl>
    implements _$$TelegramHeadImplCopyWith<$Res> {
  __$$TelegramHeadImplCopyWithImpl(
      _$TelegramHeadImpl _value, $Res Function(_$TelegramHeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramHead
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
  }) {
    return _then(_$TelegramHeadImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramHeadImpl implements _TelegramHead {
  const _$TelegramHeadImpl(
      {required this.type,
      required this.author,
      required this.time,
      required this.test,
      this.target,
      this.designation});

  factory _$TelegramHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramHeadImplFromJson(json);

  /// データ種類コード
  @override
  final String type;

  /// 発表英字官署名
  @override
  final String author;

  /// 基点時刻
  @override
  final String time;

  /// 訓練、試験等のテスト等電文���どうかを示す
  @override
  final bool test;

  /// 対象観測地点コード
  @override
  final String? target;

  /// 指示コード
  @override
  final String? designation;

  @override
  String toString() {
    return 'TelegramHead(type: $type, author: $author, time: $time, test: $test, target: $target, designation: $designation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramHeadImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, author, time, test, target, designation);

  /// Create a copy of TelegramHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramHeadImplCopyWith<_$TelegramHeadImpl> get copyWith =>
      __$$TelegramHeadImplCopyWithImpl<_$TelegramHeadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramHeadImplToJson(
      this,
    );
  }
}

abstract class _TelegramHead implements TelegramHead {
  const factory _TelegramHead(
      {required final String type,
      required final String author,
      required final String time,
      required final bool test,
      final String? target,
      final String? designation}) = _$TelegramHeadImpl;

  factory _TelegramHead.fromJson(Map<String, dynamic> json) =
      _$TelegramHeadImpl.fromJson;

  /// データ種類コード
  @override
  String get type;

  /// 発表英字官署名
  @override
  String get author;

  /// 基点時刻
  @override
  String get time;

  /// 訓練、試験等のテスト等電文���どうかを示す
  @override
  bool get test;

  /// 対象観測地点コード
  @override
  String? get target;

  /// 指示コード
  @override
  String? get designation;

  /// Create a copy of TelegramHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramHeadImplCopyWith<_$TelegramHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

XmlReport _$XmlReportFromJson(Map<String, dynamic> json) {
  return _XmlReport.fromJson(json);
}

/// @nodoc
mixin _$XmlReport {
  /// Control部
  Control get control => throw _privateConstructorUsedError;

  /// Head部
  Head get head => throw _privateConstructorUsedError;

  /// Serializes this XmlReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XmlReportCopyWith<XmlReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XmlReportCopyWith<$Res> {
  factory $XmlReportCopyWith(XmlReport value, $Res Function(XmlReport) then) =
      _$XmlReportCopyWithImpl<$Res, XmlReport>;
  @useResult
  $Res call({Control control, Head head});

  $ControlCopyWith<$Res> get control;
  $HeadCopyWith<$Res> get head;
}

/// @nodoc
class _$XmlReportCopyWithImpl<$Res, $Val extends XmlReport>
    implements $XmlReportCopyWith<$Res> {
  _$XmlReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XmlReport
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
              as Control,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Head,
    ) as $Val);
  }

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ControlCopyWith<$Res> get control {
    return $ControlCopyWith<$Res>(_value.control, (value) {
      return _then(_value.copyWith(control: value) as $Val);
    });
  }

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeadCopyWith<$Res> get head {
    return $HeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$XmlReportImplCopyWith<$Res>
    implements $XmlReportCopyWith<$Res> {
  factory _$$XmlReportImplCopyWith(
          _$XmlReportImpl value, $Res Function(_$XmlReportImpl) then) =
      __$$XmlReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Control control, Head head});

  @override
  $ControlCopyWith<$Res> get control;
  @override
  $HeadCopyWith<$Res> get head;
}

/// @nodoc
class __$$XmlReportImplCopyWithImpl<$Res>
    extends _$XmlReportCopyWithImpl<$Res, _$XmlReportImpl>
    implements _$$XmlReportImplCopyWith<$Res> {
  __$$XmlReportImplCopyWithImpl(
      _$XmlReportImpl _value, $Res Function(_$XmlReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? control = null,
    Object? head = null,
  }) {
    return _then(_$XmlReportImpl(
      control: null == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as Control,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as Head,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XmlReportImpl implements _XmlReport {
  const _$XmlReportImpl({required this.control, required this.head});

  factory _$XmlReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$XmlReportImplFromJson(json);

  /// Control部
  @override
  final Control control;

  /// Head部
  @override
  final Head head;

  @override
  String toString() {
    return 'XmlReport(control: $control, head: $head)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XmlReportImpl &&
            (identical(other.control, control) || other.control == control) &&
            (identical(other.head, head) || other.head == head));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, control, head);

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XmlReportImplCopyWith<_$XmlReportImpl> get copyWith =>
      __$$XmlReportImplCopyWithImpl<_$XmlReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XmlReportImplToJson(
      this,
    );
  }
}

abstract class _XmlReport implements XmlReport {
  const factory _XmlReport(
      {required final Control control,
      required final Head head}) = _$XmlReportImpl;

  factory _XmlReport.fromJson(Map<String, dynamic> json) =
      _$XmlReportImpl.fromJson;

  /// Control部
  @override
  Control get control;

  /// Head部
  @override
  Head get head;

  /// Create a copy of XmlReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XmlReportImplCopyWith<_$XmlReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Control _$ControlFromJson(Map<String, dynamic> json) {
  return _Control.fromJson(json);
}

/// @nodoc
mixin _$Control {
  /// 標題
  String get title => throw _privateConstructorUsedError;

  /// 運用種別
  String get status => throw _privateConstructorUsedError;

  /// 編集官署名
  String get editorialOffice => throw _privateConstructorUsedError;

  /// 発表官署名
  String get publishingOffice => throw _privateConstructorUsedError;

  /// 基点時刻
  String get dateTime => throw _privateConstructorUsedError;

  /// Serializes this Control to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Control
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ControlCopyWith<Control> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlCopyWith<$Res> {
  factory $ControlCopyWith(Control value, $Res Function(Control) then) =
      _$ControlCopyWithImpl<$Res, Control>;
  @useResult
  $Res call(
      {String title,
      String status,
      String editorialOffice,
      String publishingOffice,
      String dateTime});
}

/// @nodoc
class _$ControlCopyWithImpl<$Res, $Val extends Control>
    implements $ControlCopyWith<$Res> {
  _$ControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Control
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ControlImplCopyWith<$Res> implements $ControlCopyWith<$Res> {
  factory _$$ControlImplCopyWith(
          _$ControlImpl value, $Res Function(_$ControlImpl) then) =
      __$$ControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String status,
      String editorialOffice,
      String publishingOffice,
      String dateTime});
}

/// @nodoc
class __$$ControlImplCopyWithImpl<$Res>
    extends _$ControlCopyWithImpl<$Res, _$ControlImpl>
    implements _$$ControlImplCopyWith<$Res> {
  __$$ControlImplCopyWithImpl(
      _$ControlImpl _value, $Res Function(_$ControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of Control
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
    Object? dateTime = null,
  }) {
    return _then(_$ControlImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ControlImpl implements _Control {
  const _$ControlImpl(
      {required this.title,
      required this.status,
      required this.editorialOffice,
      required this.publishingOffice,
      required this.dateTime});

  factory _$ControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControlImplFromJson(json);

  /// 標題
  @override
  final String title;

  /// 運用種別
  @override
  final String status;

  /// 編集官署名
  @override
  final String editorialOffice;

  /// 発表官署名
  @override
  final String publishingOffice;

  /// 基点時刻
  @override
  final String dateTime;

  @override
  String toString() {
    return 'Control(title: $title, status: $status, editorialOffice: $editorialOffice, publishingOffice: $publishingOffice, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControlImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.editorialOffice, editorialOffice) ||
                other.editorialOffice == editorialOffice) &&
            (identical(other.publishingOffice, publishingOffice) ||
                other.publishingOffice == publishingOffice) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, status, editorialOffice, publishingOffice, dateTime);

  /// Create a copy of Control
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ControlImplCopyWith<_$ControlImpl> get copyWith =>
      __$$ControlImplCopyWithImpl<_$ControlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ControlImplToJson(
      this,
    );
  }
}

abstract class _Control implements Control {
  const factory _Control(
      {required final String title,
      required final String status,
      required final String editorialOffice,
      required final String publishingOffice,
      required final String dateTime}) = _$ControlImpl;

  factory _Control.fromJson(Map<String, dynamic> json) = _$ControlImpl.fromJson;

  /// 標題
  @override
  String get title;

  /// 運用種別
  @override
  String get status;

  /// 編集官署名
  @override
  String get editorialOffice;

  /// 発表官署名
  @override
  String get publishingOffice;

  /// 基点時刻
  @override
  String get dateTime;

  /// Create a copy of Control
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ControlImplCopyWith<_$ControlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Head _$HeadFromJson(Map<String, dynamic> json) {
  return _Head.fromJson(json);
}

/// @nodoc
mixin _$Head {
  /// 標題
  String get title => throw _privateConstructorUsedError;

  /// 情報形態
  String get infoType => throw _privateConstructorUsedError;

  /// スキーマの運用種別情報
  String get infoKind => throw _privateConstructorUsedError;

  /// スキーマの運用��別情報のバージョン番号
  String get infoKindVersion => throw _privateConstructorUsedError;

  /// 発表時刻
  String get reportDateTime => throw _privateConstructorUsedError;

  /// 基点時刻
  String get targetDateTime => throw _privateConstructorUsedError;

  /// 情報番号
  String? get serial => throw _privateConstructorUsedError;

  /// 見出し文
  String? get headline => throw _privateConstructorUsedError;

  /// 識別情報
  String? get eventId => throw _privateConstructorUsedError;

  /// Serializes this Head to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Head
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeadCopyWith<Head> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadCopyWith<$Res> {
  factory $HeadCopyWith(Head value, $Res Function(Head) then) =
      _$HeadCopyWithImpl<$Res, Head>;
  @useResult
  $Res call(
      {String title,
      String infoType,
      String infoKind,
      String infoKindVersion,
      String reportDateTime,
      String targetDateTime,
      String? serial,
      String? headline,
      String? eventId});
}

/// @nodoc
class _$HeadCopyWithImpl<$Res, $Val extends Head>
    implements $HeadCopyWith<$Res> {
  _$HeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Head
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? infoType = null,
    Object? infoKind = null,
    Object? infoKindVersion = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? serial = freezed,
    Object? headline = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeadImplCopyWith<$Res> implements $HeadCopyWith<$Res> {
  factory _$$HeadImplCopyWith(
          _$HeadImpl value, $Res Function(_$HeadImpl) then) =
      __$$HeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String infoType,
      String infoKind,
      String infoKindVersion,
      String reportDateTime,
      String targetDateTime,
      String? serial,
      String? headline,
      String? eventId});
}

/// @nodoc
class __$$HeadImplCopyWithImpl<$Res>
    extends _$HeadCopyWithImpl<$Res, _$HeadImpl>
    implements _$$HeadImplCopyWith<$Res> {
  __$$HeadImplCopyWithImpl(_$HeadImpl _value, $Res Function(_$HeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of Head
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? infoType = null,
    Object? infoKind = null,
    Object? infoKindVersion = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? serial = freezed,
    Object? headline = freezed,
    Object? eventId = freezed,
  }) {
    return _then(_$HeadImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: freezed == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeadImpl implements _Head {
  const _$HeadImpl(
      {required this.title,
      required this.infoType,
      required this.infoKind,
      required this.infoKindVersion,
      required this.reportDateTime,
      required this.targetDateTime,
      this.serial,
      this.headline,
      this.eventId});

  factory _$HeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeadImplFromJson(json);

  /// 標題
  @override
  final String title;

  /// 情報形態
  @override
  final String infoType;

  /// スキーマの運用種別情報
  @override
  final String infoKind;

  /// スキーマの運用��別情報のバージョン番号
  @override
  final String infoKindVersion;

  /// 発表時刻
  @override
  final String reportDateTime;

  /// 基点時刻
  @override
  final String targetDateTime;

  /// 情報番号
  @override
  final String? serial;

  /// 見出し文
  @override
  final String? headline;

  /// 識別情報
  @override
  final String? eventId;

  @override
  String toString() {
    return 'Head(title: $title, infoType: $infoType, infoKind: $infoKind, infoKindVersion: $infoKindVersion, reportDateTime: $reportDateTime, targetDateTime: $targetDateTime, serial: $serial, headline: $headline, eventId: $eventId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeadImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.infoType, infoType) ||
                other.infoType == infoType) &&
            (identical(other.infoKind, infoKind) ||
                other.infoKind == infoKind) &&
            (identical(other.infoKindVersion, infoKindVersion) ||
                other.infoKindVersion == infoKindVersion) &&
            (identical(other.reportDateTime, reportDateTime) ||
                other.reportDateTime == reportDateTime) &&
            (identical(other.targetDateTime, targetDateTime) ||
                other.targetDateTime == targetDateTime) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.eventId, eventId) || other.eventId == eventId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      infoType,
      infoKind,
      infoKindVersion,
      reportDateTime,
      targetDateTime,
      serial,
      headline,
      eventId);

  /// Create a copy of Head
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeadImplCopyWith<_$HeadImpl> get copyWith =>
      __$$HeadImplCopyWithImpl<_$HeadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeadImplToJson(
      this,
    );
  }
}

abstract class _Head implements Head {
  const factory _Head(
      {required final String title,
      required final String infoType,
      required final String infoKind,
      required final String infoKindVersion,
      required final String reportDateTime,
      required final String targetDateTime,
      final String? serial,
      final String? headline,
      final String? eventId}) = _$HeadImpl;

  factory _Head.fromJson(Map<String, dynamic> json) = _$HeadImpl.fromJson;

  /// 標題
  @override
  String get title;

  /// 情報形態
  @override
  String get infoType;

  /// スキーマの運用種別情報
  @override
  String get infoKind;

  /// スキーマの運用��別情報のバージョン番号
  @override
  String get infoKindVersion;

  /// 発表時刻
  @override
  String get reportDateTime;

  /// 基点時刻
  @override
  String get targetDateTime;

  /// 情報番号
  @override
  String? get serial;

  /// 見出し文
  @override
  String? get headline;

  /// 識別情報
  @override
  String? get eventId;

  /// Create a copy of Head
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeadImplCopyWith<_$HeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
