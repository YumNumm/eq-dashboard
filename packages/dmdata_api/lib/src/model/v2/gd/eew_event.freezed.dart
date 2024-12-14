// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eew_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EewEventResponse _$EewEventResponseFromJson(Map<String, dynamic> json) {
  return _EewEventResponse.fromJson(json);
}

/// @nodoc
mixin _$EewEventResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// 緊急地震速報リスト
  List<EewEventItem> get items => throw _privateConstructorUsedError;

  /// Serializes this EewEventResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewEventResponseCopyWith<EewEventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewEventResponseCopyWith<$Res> {
  factory $EewEventResponseCopyWith(
          EewEventResponse value, $Res Function(EewEventResponse) then) =
      _$EewEventResponseCopyWithImpl<$Res, EewEventResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EewEventItem> items});
}

/// @nodoc
class _$EewEventResponseCopyWithImpl<$Res, $Val extends EewEventResponse>
    implements $EewEventResponseCopyWith<$Res> {
  _$EewEventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
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
              as List<EewEventItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EewEventResponseImplCopyWith<$Res>
    implements $EewEventResponseCopyWith<$Res> {
  factory _$$EewEventResponseImplCopyWith(_$EewEventResponseImpl value,
          $Res Function(_$EewEventResponseImpl) then) =
      __$$EewEventResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EewEventItem> items});
}

/// @nodoc
class __$$EewEventResponseImplCopyWithImpl<$Res>
    extends _$EewEventResponseCopyWithImpl<$Res, _$EewEventResponseImpl>
    implements _$$EewEventResponseImplCopyWith<$Res> {
  __$$EewEventResponseImplCopyWithImpl(_$EewEventResponseImpl _value,
      $Res Function(_$EewEventResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
  }) {
    return _then(_$EewEventResponseImpl(
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
              as List<EewEventItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewEventResponseImpl implements _EewEventResponse {
  const _$EewEventResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<EewEventItem> items})
      : _items = items;

  factory _$EewEventResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewEventResponseImplFromJson(json);

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

  /// 緊急地震速報リスト
  final List<EewEventItem> _items;

  /// 緊急地震速報リスト
  @override
  List<EewEventItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EewEventResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewEventResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseId, responseTime, status,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of EewEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewEventResponseImplCopyWith<_$EewEventResponseImpl> get copyWith =>
      __$$EewEventResponseImplCopyWithImpl<_$EewEventResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewEventResponseImplToJson(
      this,
    );
  }
}

abstract class _EewEventResponse implements EewEventResponse {
  const factory _EewEventResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<EewEventItem> items}) = _$EewEventResponseImpl;

  factory _EewEventResponse.fromJson(Map<String, dynamic> json) =
      _$EewEventResponseImpl.fromJson;

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

  /// 緊急地震速報リスト
  @override
  List<EewEventItem> get items;

  /// Create a copy of EewEventResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewEventResponseImplCopyWith<_$EewEventResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewEventItem _$EewEventItemFromJson(Map<String, dynamic> json) {
  return _EewEventItem.fromJson(json);
}

/// @nodoc
mixin _$EewEventItem {
  /// 受信ID
  dynamic get id => throw _privateConstructorUsedError;

  /// 緊急地震速報のEventID
  String get eventId => throw _privateConstructorUsedError;

  /// EventIDに対するこの情報の情報番号
  int get serial => throw _privateConstructorUsedError;

  /// この情報を発表した時刻
  String get dateTime => throw _privateConstructorUsedError;

  /// この情報で最終であるかどうかを示し、最終報の場合は true とする
  bool get isLastInfo => throw _privateConstructorUsedError;

  /// この情報で緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  bool get isCanceled => throw _privateConstructorUsedError;

  /// 緊急地震速報の電文リスト、配列中の要素は1個で固定
  List<EewTelegram> get telegrams => throw _privateConstructorUsedError;

  /// この情報発表時、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
  /// 取消時には出現しない
  bool? get isWarning => throw _privateConstructorUsedError;

  /// 予測震源要素
  /// 取消時は出現しない
  EewEarthquake? get earthquake => throw _privateConstructorUsedError;

  /// 予測震度要素
  /// 取消時・震度未計算時は出現しない
  EewIntensity? get intensity => throw _privateConstructorUsedError;

  /// フリーテキストで表現したい場合に出現し、これを記述する
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this EewEventItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewEventItemCopyWith<EewEventItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewEventItemCopyWith<$Res> {
  factory $EewEventItemCopyWith(
          EewEventItem value, $Res Function(EewEventItem) then) =
      _$EewEventItemCopyWithImpl<$Res, EewEventItem>;
  @useResult
  $Res call(
      {dynamic id,
      String eventId,
      int serial,
      String dateTime,
      bool isLastInfo,
      bool isCanceled,
      List<EewTelegram> telegrams,
      bool? isWarning,
      EewEarthquake? earthquake,
      EewIntensity? intensity,
      String? text});

  $EewEarthquakeCopyWith<$Res>? get earthquake;
  $EewIntensityCopyWith<$Res>? get intensity;
}

/// @nodoc
class _$EewEventItemCopyWithImpl<$Res, $Val extends EewEventItem>
    implements $EewEventItemCopyWith<$Res> {
  _$EewEventItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? serial = null,
    Object? dateTime = null,
    Object? isLastInfo = null,
    Object? isCanceled = null,
    Object? telegrams = null,
    Object? isWarning = freezed,
    Object? earthquake = freezed,
    Object? intensity = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isLastInfo: null == isLastInfo
          ? _value.isLastInfo
          : isLastInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      telegrams: null == telegrams
          ? _value.telegrams
          : telegrams // ignore: cast_nullable_to_non_nullable
              as List<EewTelegram>,
      isWarning: freezed == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      earthquake: freezed == earthquake
          ? _value.earthquake
          : earthquake // ignore: cast_nullable_to_non_nullable
              as EewEarthquake?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as EewIntensity?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EewEarthquakeCopyWith<$Res>? get earthquake {
    if (_value.earthquake == null) {
      return null;
    }

    return $EewEarthquakeCopyWith<$Res>(_value.earthquake!, (value) {
      return _then(_value.copyWith(earthquake: value) as $Val);
    });
  }

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EewIntensityCopyWith<$Res>? get intensity {
    if (_value.intensity == null) {
      return null;
    }

    return $EewIntensityCopyWith<$Res>(_value.intensity!, (value) {
      return _then(_value.copyWith(intensity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewEventItemImplCopyWith<$Res>
    implements $EewEventItemCopyWith<$Res> {
  factory _$$EewEventItemImplCopyWith(
          _$EewEventItemImpl value, $Res Function(_$EewEventItemImpl) then) =
      __$$EewEventItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String eventId,
      int serial,
      String dateTime,
      bool isLastInfo,
      bool isCanceled,
      List<EewTelegram> telegrams,
      bool? isWarning,
      EewEarthquake? earthquake,
      EewIntensity? intensity,
      String? text});

  @override
  $EewEarthquakeCopyWith<$Res>? get earthquake;
  @override
  $EewIntensityCopyWith<$Res>? get intensity;
}

/// @nodoc
class __$$EewEventItemImplCopyWithImpl<$Res>
    extends _$EewEventItemCopyWithImpl<$Res, _$EewEventItemImpl>
    implements _$$EewEventItemImplCopyWith<$Res> {
  __$$EewEventItemImplCopyWithImpl(
      _$EewEventItemImpl _value, $Res Function(_$EewEventItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = null,
    Object? serial = null,
    Object? dateTime = null,
    Object? isLastInfo = null,
    Object? isCanceled = null,
    Object? telegrams = null,
    Object? isWarning = freezed,
    Object? earthquake = freezed,
    Object? intensity = freezed,
    Object? text = freezed,
  }) {
    return _then(_$EewEventItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isLastInfo: null == isLastInfo
          ? _value.isLastInfo
          : isLastInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      telegrams: null == telegrams
          ? _value._telegrams
          : telegrams // ignore: cast_nullable_to_non_nullable
              as List<EewTelegram>,
      isWarning: freezed == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      earthquake: freezed == earthquake
          ? _value.earthquake
          : earthquake // ignore: cast_nullable_to_non_nullable
              as EewEarthquake?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as EewIntensity?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewEventItemImpl implements _EewEventItem {
  const _$EewEventItemImpl(
      {required this.id,
      required this.eventId,
      required this.serial,
      required this.dateTime,
      required this.isLastInfo,
      required this.isCanceled,
      required final List<EewTelegram> telegrams,
      this.isWarning,
      this.earthquake,
      this.intensity,
      this.text})
      : _telegrams = telegrams;

  factory _$EewEventItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewEventItemImplFromJson(json);

  /// 受信ID
  @override
  final dynamic id;

  /// 緊急地震速報のEventID
  @override
  final String eventId;

  /// EventIDに対するこの情報の情報番号
  @override
  final int serial;

  /// この情報を発表した時刻
  @override
  final String dateTime;

  /// この情報で最終であるかどうかを示し、最終報の場合は true とする
  @override
  final bool isLastInfo;

  /// この情報で緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  @override
  final bool isCanceled;

  /// 緊急地震速報の電文リスト、配列中の要素は1個で固定
  final List<EewTelegram> _telegrams;

  /// 緊急地震速報の電文リスト、配列中の要素は1個で固定
  @override
  List<EewTelegram> get telegrams {
    if (_telegrams is EqualUnmodifiableListView) return _telegrams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_telegrams);
  }

  /// この情報発表時、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
  /// 取消時には出現しない
  @override
  final bool? isWarning;

  /// 予測震源要素
  /// 取消時は出現しない
  @override
  final EewEarthquake? earthquake;

  /// 予測震度要素
  /// 取消時・震度未計算時は出現しない
  @override
  final EewIntensity? intensity;

  /// フリーテキストで表現したい場合に出現し、これを記述する
  @override
  final String? text;

  @override
  String toString() {
    return 'EewEventItem(id: $id, eventId: $eventId, serial: $serial, dateTime: $dateTime, isLastInfo: $isLastInfo, isCanceled: $isCanceled, telegrams: $telegrams, isWarning: $isWarning, earthquake: $earthquake, intensity: $intensity, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewEventItemImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isLastInfo, isLastInfo) ||
                other.isLastInfo == isLastInfo) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
            const DeepCollectionEquality()
                .equals(other._telegrams, _telegrams) &&
            (identical(other.isWarning, isWarning) ||
                other.isWarning == isWarning) &&
            (identical(other.earthquake, earthquake) ||
                other.earthquake == earthquake) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      eventId,
      serial,
      dateTime,
      isLastInfo,
      isCanceled,
      const DeepCollectionEquality().hash(_telegrams),
      isWarning,
      earthquake,
      intensity,
      text);

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewEventItemImplCopyWith<_$EewEventItemImpl> get copyWith =>
      __$$EewEventItemImplCopyWithImpl<_$EewEventItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewEventItemImplToJson(
      this,
    );
  }
}

abstract class _EewEventItem implements EewEventItem {
  const factory _EewEventItem(
      {required final dynamic id,
      required final String eventId,
      required final int serial,
      required final String dateTime,
      required final bool isLastInfo,
      required final bool isCanceled,
      required final List<EewTelegram> telegrams,
      final bool? isWarning,
      final EewEarthquake? earthquake,
      final EewIntensity? intensity,
      final String? text}) = _$EewEventItemImpl;

  factory _EewEventItem.fromJson(Map<String, dynamic> json) =
      _$EewEventItemImpl.fromJson;

  /// 受信ID
  @override
  dynamic get id;

  /// 緊急地震速報のEventID
  @override
  String get eventId;

  /// EventIDに対するこの情報の情報番号
  @override
  int get serial;

  /// この情報を発表した時刻
  @override
  String get dateTime;

  /// この情報で最終であるかどうかを示し、最終報の場合は true とする
  @override
  bool get isLastInfo;

  /// この情報で緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  @override
  bool get isCanceled;

  /// 緊急地震速報の電文リスト、配列中の要素は1個で固定
  @override
  List<EewTelegram> get telegrams;

  /// この情報発表時、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
  /// 取消時には出現しない
  @override
  bool? get isWarning;

  /// 予測震源要素
  /// 取消時は出現しない
  @override
  EewEarthquake? get earthquake;

  /// 予測震度要素
  /// 取消時・震度未計算時は出現しない
  @override
  EewIntensity? get intensity;

  /// フリーテキストで表現したい場合に出現し、これを記述する
  @override
  String? get text;

  /// Create a copy of EewEventItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewEventItemImplCopyWith<_$EewEventItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewTelegram _$EewTelegramFromJson(Map<String, dynamic> json) {
  return _EewTelegram.fromJson(json);
}

/// @nodoc
mixin _$EewTelegram {
  /// 電文受信通番
  dynamic get serial => throw _privateConstructorUsedError;

  /// JSON化電文を区別するユニーク384bitハッシュ
  String get id => throw _privateConstructorUsedError;

  /// JSON化電文の基となったXML電文を区別するユニーク384bitハッシュ
  String get originalId => throw _privateConstructorUsedError;

  /// 配信区分により変化。取りうる値は eew.forecast
  String get classification => throw _privateConstructorUsedError;

  /// ヘッダ情報
  TelegramHead get head => throw _privateConstructorUsedError;

  /// 受信時刻
  String get receivedTime => throw _privateConstructorUsedError;

  /// XML電文Control,Head情報
  XmlReport get xmlReport => throw _privateConstructorUsedError;

  /// 加工データのスキーマ情報
  Schema get schema => throw _privateConstructorUsedError;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  String get format => throw _privateConstructorUsedError;

  /// データURL
  String get url => throw _privateConstructorUsedError;

  /// Serializes this EewTelegram to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewTelegramCopyWith<EewTelegram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewTelegramCopyWith<$Res> {
  factory $EewTelegramCopyWith(
          EewTelegram value, $Res Function(EewTelegram) then) =
      _$EewTelegramCopyWithImpl<$Res, EewTelegram>;
  @useResult
  $Res call(
      {dynamic serial,
      String id,
      String originalId,
      String classification,
      TelegramHead head,
      String receivedTime,
      XmlReport xmlReport,
      Schema schema,
      String format,
      String url});

  $TelegramHeadCopyWith<$Res> get head;
  $XmlReportCopyWith<$Res> get xmlReport;
  $SchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$EewTelegramCopyWithImpl<$Res, $Val extends EewTelegram>
    implements $EewTelegramCopyWith<$Res> {
  _$EewTelegramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = freezed,
    Object? id = null,
    Object? originalId = null,
    Object? classification = null,
    Object? head = null,
    Object? receivedTime = null,
    Object? xmlReport = null,
    Object? schema = null,
    Object? format = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalId: null == originalId
          ? _value.originalId
          : originalId // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramHead,
      receivedTime: null == receivedTime
          ? _value.receivedTime
          : receivedTime // ignore: cast_nullable_to_non_nullable
              as String,
      xmlReport: null == xmlReport
          ? _value.xmlReport
          : xmlReport // ignore: cast_nullable_to_non_nullable
              as XmlReport,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Schema,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramHeadCopyWith<$Res> get head {
    return $TelegramHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XmlReportCopyWith<$Res> get xmlReport {
    return $XmlReportCopyWith<$Res>(_value.xmlReport, (value) {
      return _then(_value.copyWith(xmlReport: value) as $Val);
    });
  }

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchemaCopyWith<$Res> get schema {
    return $SchemaCopyWith<$Res>(_value.schema, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewTelegramImplCopyWith<$Res>
    implements $EewTelegramCopyWith<$Res> {
  factory _$$EewTelegramImplCopyWith(
          _$EewTelegramImpl value, $Res Function(_$EewTelegramImpl) then) =
      __$$EewTelegramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic serial,
      String id,
      String originalId,
      String classification,
      TelegramHead head,
      String receivedTime,
      XmlReport xmlReport,
      Schema schema,
      String format,
      String url});

  @override
  $TelegramHeadCopyWith<$Res> get head;
  @override
  $XmlReportCopyWith<$Res> get xmlReport;
  @override
  $SchemaCopyWith<$Res> get schema;
}

/// @nodoc
class __$$EewTelegramImplCopyWithImpl<$Res>
    extends _$EewTelegramCopyWithImpl<$Res, _$EewTelegramImpl>
    implements _$$EewTelegramImplCopyWith<$Res> {
  __$$EewTelegramImplCopyWithImpl(
      _$EewTelegramImpl _value, $Res Function(_$EewTelegramImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = freezed,
    Object? id = null,
    Object? originalId = null,
    Object? classification = null,
    Object? head = null,
    Object? receivedTime = null,
    Object? xmlReport = null,
    Object? schema = null,
    Object? format = null,
    Object? url = null,
  }) {
    return _then(_$EewTelegramImpl(
      serial: freezed == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      originalId: null == originalId
          ? _value.originalId
          : originalId // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramHead,
      receivedTime: null == receivedTime
          ? _value.receivedTime
          : receivedTime // ignore: cast_nullable_to_non_nullable
              as String,
      xmlReport: null == xmlReport
          ? _value.xmlReport
          : xmlReport // ignore: cast_nullable_to_non_nullable
              as XmlReport,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Schema,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewTelegramImpl implements _EewTelegram {
  const _$EewTelegramImpl(
      {required this.serial,
      required this.id,
      required this.originalId,
      required this.classification,
      required this.head,
      required this.receivedTime,
      required this.xmlReport,
      required this.schema,
      required this.format,
      required this.url});

  factory _$EewTelegramImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewTelegramImplFromJson(json);

  /// 電文受信通番
  @override
  final dynamic serial;

  /// JSON化電文を区別するユニーク384bitハッシュ
  @override
  final String id;

  /// JSON化電文の基となったXML電文を区別するユニーク384bitハッシュ
  @override
  final String originalId;

  /// 配信区分により変化。取りうる値は eew.forecast
  @override
  final String classification;

  /// ヘッダ情報
  @override
  final TelegramHead head;

  /// 受信時刻
  @override
  final String receivedTime;

  /// XML電文Control,Head情報
  @override
  final XmlReport xmlReport;

  /// 加工データのスキーマ情報
  @override
  final Schema schema;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  @override
  final String format;

  /// データURL
  @override
  final String url;

  @override
  String toString() {
    return 'EewTelegram(serial: $serial, id: $id, originalId: $originalId, classification: $classification, head: $head, receivedTime: $receivedTime, xmlReport: $xmlReport, schema: $schema, format: $format, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewTelegramImpl &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalId, originalId) ||
                other.originalId == originalId) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.receivedTime, receivedTime) ||
                other.receivedTime == receivedTime) &&
            (identical(other.xmlReport, xmlReport) ||
                other.xmlReport == xmlReport) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serial),
      id,
      originalId,
      classification,
      head,
      receivedTime,
      xmlReport,
      schema,
      format,
      url);

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewTelegramImplCopyWith<_$EewTelegramImpl> get copyWith =>
      __$$EewTelegramImplCopyWithImpl<_$EewTelegramImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewTelegramImplToJson(
      this,
    );
  }
}

abstract class _EewTelegram implements EewTelegram {
  const factory _EewTelegram(
      {required final dynamic serial,
      required final String id,
      required final String originalId,
      required final String classification,
      required final TelegramHead head,
      required final String receivedTime,
      required final XmlReport xmlReport,
      required final Schema schema,
      required final String format,
      required final String url}) = _$EewTelegramImpl;

  factory _EewTelegram.fromJson(Map<String, dynamic> json) =
      _$EewTelegramImpl.fromJson;

  /// 電文受信通番
  @override
  dynamic get serial;

  /// JSON化電文を区別するユニーク384bitハッシュ
  @override
  String get id;

  /// JSON化電文の基となったXML電文を区別するユニーク384bitハッシュ
  @override
  String get originalId;

  /// 配信区分により変化。取りうる値は eew.forecast
  @override
  String get classification;

  /// ヘッダ情報
  @override
  TelegramHead get head;

  /// 受信時刻
  @override
  String get receivedTime;

  /// XML電文Control,Head情報
  @override
  XmlReport get xmlReport;

  /// 加工データのスキーマ情報
  @override
  Schema get schema;

  /// bodyフィールドの表現形式を示す
  /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
  @override
  String get format;

  /// データURL
  @override
  String get url;

  /// Create a copy of EewTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewTelegramImplCopyWith<_$EewTelegramImpl> get copyWith =>
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

  /// 基点��刻
  String get time => throw _privateConstructorUsedError;

  /// 訓練、試験等のテスト等電文かどうかを示す
  /// このAPIでは常にfalse
  bool get test => throw _privateConstructorUsedError;

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
      this.designation});

  factory _$TelegramHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramHeadImplFromJson(json);

  /// データ種類コード
  @override
  final String type;

  /// 発表英字官署名
  @override
  final String author;

  /// 基点��刻
  @override
  final String time;

  /// 訓練、試験等のテスト等電文かどうかを示す
  /// このAPIでは常にfalse
  @override
  final bool test;

  /// 指示コード
  @override
  final String? designation;

  @override
  String toString() {
    return 'TelegramHead(type: $type, author: $author, time: $time, test: $test, designation: $designation)';
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
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, author, time, test, designation);

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
      final String? designation}) = _$TelegramHeadImpl;

  factory _TelegramHead.fromJson(Map<String, dynamic> json) =
      _$TelegramHeadImpl.fromJson;

  /// データ種類コード
  @override
  String get type;

  /// 発表英字官署名
  @override
  String get author;

  /// 基点��刻
  @override
  String get time;

  /// 訓練、試験等のテスト等電文かどうかを示す
  /// このAPIでは常にfalse
  @override
  bool get test;

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

  /// スキーマの運用種別情報のバージョン番号
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

  /// スキーマの運用種別情報のバージョン番号
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

  /// スキーマの運用種別情報のバージョン番号
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

Schema _$SchemaFromJson(Map<String, dynamic> json) {
  return _Schema.fromJson(json);
}

/// @nodoc
mixin _$Schema {
  /// スキーマ名
  String get type => throw _privateConstructorUsedError;

  /// スキーマのバージョン
  String get version => throw _privateConstructorUsedError;

  /// Serializes this Schema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchemaCopyWith<Schema> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemaCopyWith<$Res> {
  factory $SchemaCopyWith(Schema value, $Res Function(Schema) then) =
      _$SchemaCopyWithImpl<$Res, Schema>;
  @useResult
  $Res call({String type, String version});
}

/// @nodoc
class _$SchemaCopyWithImpl<$Res, $Val extends Schema>
    implements $SchemaCopyWith<$Res> {
  _$SchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemaImplCopyWith<$Res> implements $SchemaCopyWith<$Res> {
  factory _$$SchemaImplCopyWith(
          _$SchemaImpl value, $Res Function(_$SchemaImpl) then) =
      __$$SchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String version});
}

/// @nodoc
class __$$SchemaImplCopyWithImpl<$Res>
    extends _$SchemaCopyWithImpl<$Res, _$SchemaImpl>
    implements _$$SchemaImplCopyWith<$Res> {
  __$$SchemaImplCopyWithImpl(
      _$SchemaImpl _value, $Res Function(_$SchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_$SchemaImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchemaImpl implements _Schema {
  const _$SchemaImpl({required this.type, required this.version});

  factory _$SchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchemaImplFromJson(json);

  /// スキーマ名
  @override
  final String type;

  /// スキーマのバージョン
  @override
  final String version;

  @override
  String toString() {
    return 'Schema(type: $type, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, version);

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemaImplCopyWith<_$SchemaImpl> get copyWith =>
      __$$SchemaImplCopyWithImpl<_$SchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchemaImplToJson(
      this,
    );
  }
}

abstract class _Schema implements Schema {
  const factory _Schema(
      {required final String type,
      required final String version}) = _$SchemaImpl;

  factory _Schema.fromJson(Map<String, dynamic> json) = _$SchemaImpl.fromJson;

  /// スキーマ名
  @override
  String get type;

  /// スキーマのバージョン
  @override
  String get version;

  /// Create a copy of Schema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchemaImplCopyWith<_$SchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
