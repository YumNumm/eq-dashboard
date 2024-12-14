// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eew_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EewListResponse _$EewListResponseFromJson(Map<String, dynamic> json) {
  return _EewListResponse.fromJson(json);
}

/// @nodoc
mixin _$EewListResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// 緊急地震速報リスト
  List<EewListItem> get items => throw _privateConstructorUsedError;

  /// 次のリソースがある場合に出現
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this EewListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewListResponseCopyWith<EewListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewListResponseCopyWith<$Res> {
  factory $EewListResponseCopyWith(
          EewListResponse value, $Res Function(EewListResponse) then) =
      _$EewListResponseCopyWithImpl<$Res, EewListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EewListItem> items,
      String? nextToken});
}

/// @nodoc
class _$EewListResponseCopyWithImpl<$Res, $Val extends EewListResponse>
    implements $EewListResponseCopyWith<$Res> {
  _$EewListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewListResponse
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
              as List<EewListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EewListResponseImplCopyWith<$Res>
    implements $EewListResponseCopyWith<$Res> {
  factory _$$EewListResponseImplCopyWith(_$EewListResponseImpl value,
          $Res Function(_$EewListResponseImpl) then) =
      __$$EewListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EewListItem> items,
      String? nextToken});
}

/// @nodoc
class __$$EewListResponseImplCopyWithImpl<$Res>
    extends _$EewListResponseCopyWithImpl<$Res, _$EewListResponseImpl>
    implements _$$EewListResponseImplCopyWith<$Res> {
  __$$EewListResponseImplCopyWithImpl(
      _$EewListResponseImpl _value, $Res Function(_$EewListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewListResponse
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
    return _then(_$EewListResponseImpl(
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
              as List<EewListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewListResponseImpl implements _EewListResponse {
  const _$EewListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<EewListItem> items,
      this.nextToken})
      : _items = items;

  factory _$EewListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewListResponseImplFromJson(json);

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
  final List<EewListItem> _items;

  /// 緊急地震速報リスト
  @override
  List<EewListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// 次のリソースがある場合に出現
  @override
  final String? nextToken;

  @override
  String toString() {
    return 'EewListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewListResponseImpl &&
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

  /// Create a copy of EewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewListResponseImplCopyWith<_$EewListResponseImpl> get copyWith =>
      __$$EewListResponseImplCopyWithImpl<_$EewListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewListResponseImplToJson(
      this,
    );
  }
}

abstract class _EewListResponse implements EewListResponse {
  const factory _EewListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<EewListItem> items,
      final String? nextToken}) = _$EewListResponseImpl;

  factory _EewListResponse.fromJson(Map<String, dynamic> json) =
      _$EewListResponseImpl.fromJson;

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
  List<EewListItem> get items;

  /// 次のリソースがある場合に出現
  @override
  String? get nextToken;

  /// Create a copy of EewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewListResponseImplCopyWith<_$EewListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewListItem _$EewListItemFromJson(Map<String, dynamic> json) {
  return _EewListItem.fromJson(json);
}

/// @nodoc
mixin _$EewListItem {
  /// 受信ID
  dynamic get id => throw _privateConstructorUsedError;

  /// 緊急地震速報のEventID
  String get eventId => throw _privateConstructorUsedError;

  /// 緊急地震速報のEventIDに対する報数
  int get serial => throw _privateConstructorUsedError;

  /// この緊急地震速報（最終報）を発表した時刻
  String get dateTime => throw _privateConstructorUsedError;

  /// このEventIDに対してこの内容が最終であるかどうかを示し、このAPIでは常に true とする
  bool get isLastInfo => throw _privateConstructorUsedError;

  /// このEventIDに対して緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  bool get isCanceled => throw _privateConstructorUsedError;

  /// このEventIDに対して、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
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

  /// Serializes this EewListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewListItemCopyWith<EewListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewListItemCopyWith<$Res> {
  factory $EewListItemCopyWith(
          EewListItem value, $Res Function(EewListItem) then) =
      _$EewListItemCopyWithImpl<$Res, EewListItem>;
  @useResult
  $Res call(
      {dynamic id,
      String eventId,
      int serial,
      String dateTime,
      bool isLastInfo,
      bool isCanceled,
      bool? isWarning,
      EewEarthquake? earthquake,
      EewIntensity? intensity,
      String? text});

  $EewEarthquakeCopyWith<$Res>? get earthquake;
  $EewIntensityCopyWith<$Res>? get intensity;
}

/// @nodoc
class _$EewListItemCopyWithImpl<$Res, $Val extends EewListItem>
    implements $EewListItemCopyWith<$Res> {
  _$EewListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewListItem
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

  /// Create a copy of EewListItem
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

  /// Create a copy of EewListItem
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
abstract class _$$EewListItemImplCopyWith<$Res>
    implements $EewListItemCopyWith<$Res> {
  factory _$$EewListItemImplCopyWith(
          _$EewListItemImpl value, $Res Function(_$EewListItemImpl) then) =
      __$$EewListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String eventId,
      int serial,
      String dateTime,
      bool isLastInfo,
      bool isCanceled,
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
class __$$EewListItemImplCopyWithImpl<$Res>
    extends _$EewListItemCopyWithImpl<$Res, _$EewListItemImpl>
    implements _$$EewListItemImplCopyWith<$Res> {
  __$$EewListItemImplCopyWithImpl(
      _$EewListItemImpl _value, $Res Function(_$EewListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewListItem
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
    Object? isWarning = freezed,
    Object? earthquake = freezed,
    Object? intensity = freezed,
    Object? text = freezed,
  }) {
    return _then(_$EewListItemImpl(
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
class _$EewListItemImpl implements _EewListItem {
  const _$EewListItemImpl(
      {required this.id,
      required this.eventId,
      required this.serial,
      required this.dateTime,
      required this.isLastInfo,
      required this.isCanceled,
      this.isWarning,
      this.earthquake,
      this.intensity,
      this.text});

  factory _$EewListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewListItemImplFromJson(json);

  /// 受信ID
  @override
  final dynamic id;

  /// 緊急地震速報のEventID
  @override
  final String eventId;

  /// 緊急地震速報のEventIDに対する報数
  @override
  final int serial;

  /// この緊急地震速報（最終報）を発表した時刻
  @override
  final String dateTime;

  /// このEventIDに対してこの内容が最終であるかどうかを示し、このAPIでは常に true とする
  @override
  final bool isLastInfo;

  /// このEventIDに対して緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  @override
  final bool isCanceled;

  /// このEventIDに対して、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
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
    return 'EewListItem(id: $id, eventId: $eventId, serial: $serial, dateTime: $dateTime, isLastInfo: $isLastInfo, isCanceled: $isCanceled, isWarning: $isWarning, earthquake: $earthquake, intensity: $intensity, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewListItemImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isLastInfo, isLastInfo) ||
                other.isLastInfo == isLastInfo) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
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
      isWarning,
      earthquake,
      intensity,
      text);

  /// Create a copy of EewListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewListItemImplCopyWith<_$EewListItemImpl> get copyWith =>
      __$$EewListItemImplCopyWithImpl<_$EewListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewListItemImplToJson(
      this,
    );
  }
}

abstract class _EewListItem implements EewListItem {
  const factory _EewListItem(
      {required final dynamic id,
      required final String eventId,
      required final int serial,
      required final String dateTime,
      required final bool isLastInfo,
      required final bool isCanceled,
      final bool? isWarning,
      final EewEarthquake? earthquake,
      final EewIntensity? intensity,
      final String? text}) = _$EewListItemImpl;

  factory _EewListItem.fromJson(Map<String, dynamic> json) =
      _$EewListItemImpl.fromJson;

  /// 受信ID
  @override
  dynamic get id;

  /// 緊急地震速報のEventID
  @override
  String get eventId;

  /// 緊急地震速報のEventIDに対する報数
  @override
  int get serial;

  /// この緊急地震速報（最終報）を発表した時刻
  @override
  String get dateTime;

  /// このEventIDに対してこの内容が最終であるかどうかを示し、このAPIでは常に true とする
  @override
  bool get isLastInfo;

  /// このEventIDに対して緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
  @override
  bool get isCanceled;

  /// このEventIDに対して、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
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

  /// Create a copy of EewListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewListItemImplCopyWith<_$EewListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewEarthquake _$EewEarthquakeFromJson(Map<String, dynamic> json) {
  return _EewEarthquake.fromJson(json);
}

/// @nodoc
mixin _$EewEarthquake {
  /// ��震検知時刻
  String get arrivalTime => throw _privateConstructorUsedError;

  /// 震源要素
  EewHypocenter get hypocenter => throw _privateConstructorUsedError;

  /// マグニチュード要素
  Magnitude get magnitude => throw _privateConstructorUsedError;

  /// Serializes this EewEarthquake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewEarthquakeCopyWith<EewEarthquake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewEarthquakeCopyWith<$Res> {
  factory $EewEarthquakeCopyWith(
          EewEarthquake value, $Res Function(EewEarthquake) then) =
      _$EewEarthquakeCopyWithImpl<$Res, EewEarthquake>;
  @useResult
  $Res call(
      {String arrivalTime, EewHypocenter hypocenter, Magnitude magnitude});

  $EewHypocenterCopyWith<$Res> get hypocenter;
  $MagnitudeCopyWith<$Res> get magnitude;
}

/// @nodoc
class _$EewEarthquakeCopyWithImpl<$Res, $Val extends EewEarthquake>
    implements $EewEarthquakeCopyWith<$Res> {
  _$EewEarthquakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = null,
    Object? hypocenter = null,
    Object? magnitude = null,
  }) {
    return _then(_value.copyWith(
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenter: null == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as EewHypocenter,
      magnitude: null == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude,
    ) as $Val);
  }

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EewHypocenterCopyWith<$Res> get hypocenter {
    return $EewHypocenterCopyWith<$Res>(_value.hypocenter, (value) {
      return _then(_value.copyWith(hypocenter: value) as $Val);
    });
  }

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MagnitudeCopyWith<$Res> get magnitude {
    return $MagnitudeCopyWith<$Res>(_value.magnitude, (value) {
      return _then(_value.copyWith(magnitude: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewEarthquakeImplCopyWith<$Res>
    implements $EewEarthquakeCopyWith<$Res> {
  factory _$$EewEarthquakeImplCopyWith(
          _$EewEarthquakeImpl value, $Res Function(_$EewEarthquakeImpl) then) =
      __$$EewEarthquakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String arrivalTime, EewHypocenter hypocenter, Magnitude magnitude});

  @override
  $EewHypocenterCopyWith<$Res> get hypocenter;
  @override
  $MagnitudeCopyWith<$Res> get magnitude;
}

/// @nodoc
class __$$EewEarthquakeImplCopyWithImpl<$Res>
    extends _$EewEarthquakeCopyWithImpl<$Res, _$EewEarthquakeImpl>
    implements _$$EewEarthquakeImplCopyWith<$Res> {
  __$$EewEarthquakeImplCopyWithImpl(
      _$EewEarthquakeImpl _value, $Res Function(_$EewEarthquakeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalTime = null,
    Object? hypocenter = null,
    Object? magnitude = null,
  }) {
    return _then(_$EewEarthquakeImpl(
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenter: null == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as EewHypocenter,
      magnitude: null == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewEarthquakeImpl implements _EewEarthquake {
  const _$EewEarthquakeImpl(
      {required this.arrivalTime,
      required this.hypocenter,
      required this.magnitude});

  factory _$EewEarthquakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewEarthquakeImplFromJson(json);

  /// ��震検知時刻
  @override
  final String arrivalTime;

  /// 震源要素
  @override
  final EewHypocenter hypocenter;

  /// マグニチュード要素
  @override
  final Magnitude magnitude;

  @override
  String toString() {
    return 'EewEarthquake(arrivalTime: $arrivalTime, hypocenter: $hypocenter, magnitude: $magnitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewEarthquakeImpl &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.hypocenter, hypocenter) ||
                other.hypocenter == hypocenter) &&
            (identical(other.magnitude, magnitude) ||
                other.magnitude == magnitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, arrivalTime, hypocenter, magnitude);

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewEarthquakeImplCopyWith<_$EewEarthquakeImpl> get copyWith =>
      __$$EewEarthquakeImplCopyWithImpl<_$EewEarthquakeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewEarthquakeImplToJson(
      this,
    );
  }
}

abstract class _EewEarthquake implements EewEarthquake {
  const factory _EewEarthquake(
      {required final String arrivalTime,
      required final EewHypocenter hypocenter,
      required final Magnitude magnitude}) = _$EewEarthquakeImpl;

  factory _EewEarthquake.fromJson(Map<String, dynamic> json) =
      _$EewEarthquakeImpl.fromJson;

  /// ��震検知時刻
  @override
  String get arrivalTime;

  /// 震源要素
  @override
  EewHypocenter get hypocenter;

  /// マグニチュード要素
  @override
  Magnitude get magnitude;

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewEarthquakeImplCopyWith<_$EewEarthquakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewHypocenter _$EewHypocenterFromJson(Map<String, dynamic> json) {
  return _EewHypocenter.fromJson(json);
}

/// @nodoc
mixin _$EewHypocenter {
  /// 震央地名コード
  String get code => throw _privateConstructorUsedError;

  /// 震央地名
  String get name => throw _privateConstructorUsedError;

  /// 震源要素の位置情報
  Coordinate get coordinate => throw _privateConstructorUsedError;

  /// 深さ要素
  Depth get depth => throw _privateConstructorUsedError;

  /// 震源の補足情報
  EewReduce get reduce => throw _privateConstructorUsedError;

  /// 震源要素の精度情報
  EewAccuracy get accuracy => throw _privateConstructorUsedError;

  /// Serializes this EewHypocenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewHypocenterCopyWith<EewHypocenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewHypocenterCopyWith<$Res> {
  factory $EewHypocenterCopyWith(
          EewHypocenter value, $Res Function(EewHypocenter) then) =
      _$EewHypocenterCopyWithImpl<$Res, EewHypocenter>;
  @useResult
  $Res call(
      {String code,
      String name,
      Coordinate coordinate,
      Depth depth,
      EewReduce reduce,
      EewAccuracy accuracy});

  $CoordinateCopyWith<$Res> get coordinate;
  $DepthCopyWith<$Res> get depth;
  $EewReduceCopyWith<$Res> get reduce;
  $EewAccuracyCopyWith<$Res> get accuracy;
}

/// @nodoc
class _$EewHypocenterCopyWithImpl<$Res, $Val extends EewHypocenter>
    implements $EewHypocenterCopyWith<$Res> {
  _$EewHypocenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? coordinate = null,
    Object? depth = null,
    Object? reduce = null,
    Object? accuracy = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      reduce: null == reduce
          ? _value.reduce
          : reduce // ignore: cast_nullable_to_non_nullable
              as EewReduce,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as EewAccuracy,
    ) as $Val);
  }

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepthCopyWith<$Res> get depth {
    return $DepthCopyWith<$Res>(_value.depth, (value) {
      return _then(_value.copyWith(depth: value) as $Val);
    });
  }

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EewReduceCopyWith<$Res> get reduce {
    return $EewReduceCopyWith<$Res>(_value.reduce, (value) {
      return _then(_value.copyWith(reduce: value) as $Val);
    });
  }

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EewAccuracyCopyWith<$Res> get accuracy {
    return $EewAccuracyCopyWith<$Res>(_value.accuracy, (value) {
      return _then(_value.copyWith(accuracy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewHypocenterImplCopyWith<$Res>
    implements $EewHypocenterCopyWith<$Res> {
  factory _$$EewHypocenterImplCopyWith(
          _$EewHypocenterImpl value, $Res Function(_$EewHypocenterImpl) then) =
      __$$EewHypocenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String name,
      Coordinate coordinate,
      Depth depth,
      EewReduce reduce,
      EewAccuracy accuracy});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
  @override
  $DepthCopyWith<$Res> get depth;
  @override
  $EewReduceCopyWith<$Res> get reduce;
  @override
  $EewAccuracyCopyWith<$Res> get accuracy;
}

/// @nodoc
class __$$EewHypocenterImplCopyWithImpl<$Res>
    extends _$EewHypocenterCopyWithImpl<$Res, _$EewHypocenterImpl>
    implements _$$EewHypocenterImplCopyWith<$Res> {
  __$$EewHypocenterImplCopyWithImpl(
      _$EewHypocenterImpl _value, $Res Function(_$EewHypocenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? coordinate = null,
    Object? depth = null,
    Object? reduce = null,
    Object? accuracy = null,
  }) {
    return _then(_$EewHypocenterImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      reduce: null == reduce
          ? _value.reduce
          : reduce // ignore: cast_nullable_to_non_nullable
              as EewReduce,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as EewAccuracy,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewHypocenterImpl implements _EewHypocenter {
  const _$EewHypocenterImpl(
      {required this.code,
      required this.name,
      required this.coordinate,
      required this.depth,
      required this.reduce,
      required this.accuracy});

  factory _$EewHypocenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewHypocenterImplFromJson(json);

  /// 震央地名コード
  @override
  final String code;

  /// 震央地名
  @override
  final String name;

  /// 震源要素の位置情報
  @override
  final Coordinate coordinate;

  /// 深さ要素
  @override
  final Depth depth;

  /// 震源の補足情報
  @override
  final EewReduce reduce;

  /// 震源要素の精度情報
  @override
  final EewAccuracy accuracy;

  @override
  String toString() {
    return 'EewHypocenter(code: $code, name: $name, coordinate: $coordinate, depth: $depth, reduce: $reduce, accuracy: $accuracy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewHypocenterImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.reduce, reduce) || other.reduce == reduce) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, name, coordinate, depth, reduce, accuracy);

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewHypocenterImplCopyWith<_$EewHypocenterImpl> get copyWith =>
      __$$EewHypocenterImplCopyWithImpl<_$EewHypocenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewHypocenterImplToJson(
      this,
    );
  }
}

abstract class _EewHypocenter implements EewHypocenter {
  const factory _EewHypocenter(
      {required final String code,
      required final String name,
      required final Coordinate coordinate,
      required final Depth depth,
      required final EewReduce reduce,
      required final EewAccuracy accuracy}) = _$EewHypocenterImpl;

  factory _EewHypocenter.fromJson(Map<String, dynamic> json) =
      _$EewHypocenterImpl.fromJson;

  /// 震央地名コード
  @override
  String get code;

  /// 震央地名
  @override
  String get name;

  /// 震源要素の位置情報
  @override
  Coordinate get coordinate;

  /// 深さ要素
  @override
  Depth get depth;

  /// 震源の補足情報
  @override
  EewReduce get reduce;

  /// 震源要素の精度情報
  @override
  EewAccuracy get accuracy;

  /// Create a copy of EewHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewHypocenterImplCopyWith<_$EewHypocenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewReduce _$EewReduceFromJson(Map<String, dynamic> json) {
  return _EewReduce.fromJson(json);
}

/// @nodoc
mixin _$EewReduce {
  /// 代表地域コード
  String get code => throw _privateConstructorUsedError;

  /// 代表地域名
  String get name => throw _privateConstructorUsedError;

  /// Serializes this EewReduce to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewReduce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewReduceCopyWith<EewReduce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewReduceCopyWith<$Res> {
  factory $EewReduceCopyWith(EewReduce value, $Res Function(EewReduce) then) =
      _$EewReduceCopyWithImpl<$Res, EewReduce>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$EewReduceCopyWithImpl<$Res, $Val extends EewReduce>
    implements $EewReduceCopyWith<$Res> {
  _$EewReduceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewReduce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EewReduceImplCopyWith<$Res>
    implements $EewReduceCopyWith<$Res> {
  factory _$$EewReduceImplCopyWith(
          _$EewReduceImpl value, $Res Function(_$EewReduceImpl) then) =
      __$$EewReduceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$EewReduceImplCopyWithImpl<$Res>
    extends _$EewReduceCopyWithImpl<$Res, _$EewReduceImpl>
    implements _$$EewReduceImplCopyWith<$Res> {
  __$$EewReduceImplCopyWithImpl(
      _$EewReduceImpl _value, $Res Function(_$EewReduceImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewReduce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$EewReduceImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewReduceImpl implements _EewReduce {
  const _$EewReduceImpl({required this.code, required this.name});

  factory _$EewReduceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewReduceImplFromJson(json);

  /// 代表地域コード
  @override
  final String code;

  /// 代表地域名
  @override
  final String name;

  @override
  String toString() {
    return 'EewReduce(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewReduceImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of EewReduce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewReduceImplCopyWith<_$EewReduceImpl> get copyWith =>
      __$$EewReduceImplCopyWithImpl<_$EewReduceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewReduceImplToJson(
      this,
    );
  }
}

abstract class _EewReduce implements EewReduce {
  const factory _EewReduce(
      {required final String code,
      required final String name}) = _$EewReduceImpl;

  factory _EewReduce.fromJson(Map<String, dynamic> json) =
      _$EewReduceImpl.fromJson;

  /// 代表地域コード
  @override
  String get code;

  /// 代表地域名
  @override
  String get name;

  /// Create a copy of EewReduce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewReduceImplCopyWith<_$EewReduceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewAccuracy _$EewAccuracyFromJson(Map<String, dynamic> json) {
  return _EewAccuracy.fromJson(json);
}

/// @nodoc
mixin _$EewAccuracy {
  /// 震央位置の精度値
  List<String> get epicenters => throw _privateConstructorUsedError;

  /// 深さの精度値
  String get depth => throw _privateConstructorUsedError;

  /// マグニチュードの精度値
  String get magnitudeCalculation => throw _privateConstructorUsedError;

  /// マグニチュード計算使用観測点数
  String get numberOfMagnitudeCalculation => throw _privateConstructorUsedError;

  /// Serializes this EewAccuracy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewAccuracy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewAccuracyCopyWith<EewAccuracy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewAccuracyCopyWith<$Res> {
  factory $EewAccuracyCopyWith(
          EewAccuracy value, $Res Function(EewAccuracy) then) =
      _$EewAccuracyCopyWithImpl<$Res, EewAccuracy>;
  @useResult
  $Res call(
      {List<String> epicenters,
      String depth,
      String magnitudeCalculation,
      String numberOfMagnitudeCalculation});
}

/// @nodoc
class _$EewAccuracyCopyWithImpl<$Res, $Val extends EewAccuracy>
    implements $EewAccuracyCopyWith<$Res> {
  _$EewAccuracyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewAccuracy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenters = null,
    Object? depth = null,
    Object? magnitudeCalculation = null,
    Object? numberOfMagnitudeCalculation = null,
  }) {
    return _then(_value.copyWith(
      epicenters: null == epicenters
          ? _value.epicenters
          : epicenters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as String,
      magnitudeCalculation: null == magnitudeCalculation
          ? _value.magnitudeCalculation
          : magnitudeCalculation // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfMagnitudeCalculation: null == numberOfMagnitudeCalculation
          ? _value.numberOfMagnitudeCalculation
          : numberOfMagnitudeCalculation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EewAccuracyImplCopyWith<$Res>
    implements $EewAccuracyCopyWith<$Res> {
  factory _$$EewAccuracyImplCopyWith(
          _$EewAccuracyImpl value, $Res Function(_$EewAccuracyImpl) then) =
      __$$EewAccuracyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> epicenters,
      String depth,
      String magnitudeCalculation,
      String numberOfMagnitudeCalculation});
}

/// @nodoc
class __$$EewAccuracyImplCopyWithImpl<$Res>
    extends _$EewAccuracyCopyWithImpl<$Res, _$EewAccuracyImpl>
    implements _$$EewAccuracyImplCopyWith<$Res> {
  __$$EewAccuracyImplCopyWithImpl(
      _$EewAccuracyImpl _value, $Res Function(_$EewAccuracyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewAccuracy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epicenters = null,
    Object? depth = null,
    Object? magnitudeCalculation = null,
    Object? numberOfMagnitudeCalculation = null,
  }) {
    return _then(_$EewAccuracyImpl(
      epicenters: null == epicenters
          ? _value._epicenters
          : epicenters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as String,
      magnitudeCalculation: null == magnitudeCalculation
          ? _value.magnitudeCalculation
          : magnitudeCalculation // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfMagnitudeCalculation: null == numberOfMagnitudeCalculation
          ? _value.numberOfMagnitudeCalculation
          : numberOfMagnitudeCalculation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewAccuracyImpl implements _EewAccuracy {
  const _$EewAccuracyImpl(
      {required final List<String> epicenters,
      required this.depth,
      required this.magnitudeCalculation,
      required this.numberOfMagnitudeCalculation})
      : _epicenters = epicenters;

  factory _$EewAccuracyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewAccuracyImplFromJson(json);

  /// 震央位置の精度値
  final List<String> _epicenters;

  /// 震央位置の精度値
  @override
  List<String> get epicenters {
    if (_epicenters is EqualUnmodifiableListView) return _epicenters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_epicenters);
  }

  /// 深さの精度値
  @override
  final String depth;

  /// マグニチュードの精度値
  @override
  final String magnitudeCalculation;

  /// マグニチュード計算使用観測点数
  @override
  final String numberOfMagnitudeCalculation;

  @override
  String toString() {
    return 'EewAccuracy(epicenters: $epicenters, depth: $depth, magnitudeCalculation: $magnitudeCalculation, numberOfMagnitudeCalculation: $numberOfMagnitudeCalculation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewAccuracyImpl &&
            const DeepCollectionEquality()
                .equals(other._epicenters, _epicenters) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.magnitudeCalculation, magnitudeCalculation) ||
                other.magnitudeCalculation == magnitudeCalculation) &&
            (identical(other.numberOfMagnitudeCalculation,
                    numberOfMagnitudeCalculation) ||
                other.numberOfMagnitudeCalculation ==
                    numberOfMagnitudeCalculation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_epicenters),
      depth,
      magnitudeCalculation,
      numberOfMagnitudeCalculation);

  /// Create a copy of EewAccuracy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewAccuracyImplCopyWith<_$EewAccuracyImpl> get copyWith =>
      __$$EewAccuracyImplCopyWithImpl<_$EewAccuracyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewAccuracyImplToJson(
      this,
    );
  }
}

abstract class _EewAccuracy implements EewAccuracy {
  const factory _EewAccuracy(
      {required final List<String> epicenters,
      required final String depth,
      required final String magnitudeCalculation,
      required final String numberOfMagnitudeCalculation}) = _$EewAccuracyImpl;

  factory _EewAccuracy.fromJson(Map<String, dynamic> json) =
      _$EewAccuracyImpl.fromJson;

  /// 震央位置の精度値
  @override
  List<String> get epicenters;

  /// 深さの精度値
  @override
  String get depth;

  /// マグニチュードの精度値
  @override
  String get magnitudeCalculation;

  /// マグニチュード計算使用観測点数
  @override
  String get numberOfMagnitudeCalculation;

  /// Create a copy of EewAccuracy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewAccuracyImplCopyWith<_$EewAccuracyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewIntensity _$EewIntensityFromJson(Map<String, dynamic> json) {
  return _EewIntensity.fromJson(json);
}

/// @nodoc
mixin _$EewIntensity {
  /// 最大予測震度
  ForecastMaxInt get forecastMaxInt => throw _privateConstructorUsedError;

  /// Serializes this EewIntensity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewIntensityCopyWith<EewIntensity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewIntensityCopyWith<$Res> {
  factory $EewIntensityCopyWith(
          EewIntensity value, $Res Function(EewIntensity) then) =
      _$EewIntensityCopyWithImpl<$Res, EewIntensity>;
  @useResult
  $Res call({ForecastMaxInt forecastMaxInt});

  $ForecastMaxIntCopyWith<$Res> get forecastMaxInt;
}

/// @nodoc
class _$EewIntensityCopyWithImpl<$Res, $Val extends EewIntensity>
    implements $EewIntensityCopyWith<$Res> {
  _$EewIntensityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastMaxInt = null,
  }) {
    return _then(_value.copyWith(
      forecastMaxInt: null == forecastMaxInt
          ? _value.forecastMaxInt
          : forecastMaxInt // ignore: cast_nullable_to_non_nullable
              as ForecastMaxInt,
    ) as $Val);
  }

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastMaxIntCopyWith<$Res> get forecastMaxInt {
    return $ForecastMaxIntCopyWith<$Res>(_value.forecastMaxInt, (value) {
      return _then(_value.copyWith(forecastMaxInt: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewIntensityImplCopyWith<$Res>
    implements $EewIntensityCopyWith<$Res> {
  factory _$$EewIntensityImplCopyWith(
          _$EewIntensityImpl value, $Res Function(_$EewIntensityImpl) then) =
      __$$EewIntensityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ForecastMaxInt forecastMaxInt});

  @override
  $ForecastMaxIntCopyWith<$Res> get forecastMaxInt;
}

/// @nodoc
class __$$EewIntensityImplCopyWithImpl<$Res>
    extends _$EewIntensityCopyWithImpl<$Res, _$EewIntensityImpl>
    implements _$$EewIntensityImplCopyWith<$Res> {
  __$$EewIntensityImplCopyWithImpl(
      _$EewIntensityImpl _value, $Res Function(_$EewIntensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastMaxInt = null,
  }) {
    return _then(_$EewIntensityImpl(
      forecastMaxInt: null == forecastMaxInt
          ? _value.forecastMaxInt
          : forecastMaxInt // ignore: cast_nullable_to_non_nullable
              as ForecastMaxInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewIntensityImpl implements _EewIntensity {
  const _$EewIntensityImpl({required this.forecastMaxInt});

  factory _$EewIntensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewIntensityImplFromJson(json);

  /// 最大予測震度
  @override
  final ForecastMaxInt forecastMaxInt;

  @override
  String toString() {
    return 'EewIntensity(forecastMaxInt: $forecastMaxInt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewIntensityImpl &&
            (identical(other.forecastMaxInt, forecastMaxInt) ||
                other.forecastMaxInt == forecastMaxInt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, forecastMaxInt);

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewIntensityImplCopyWith<_$EewIntensityImpl> get copyWith =>
      __$$EewIntensityImplCopyWithImpl<_$EewIntensityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewIntensityImplToJson(
      this,
    );
  }
}

abstract class _EewIntensity implements EewIntensity {
  const factory _EewIntensity({required final ForecastMaxInt forecastMaxInt}) =
      _$EewIntensityImpl;

  factory _EewIntensity.fromJson(Map<String, dynamic> json) =
      _$EewIntensityImpl.fromJson;

  /// 最大予測震度
  @override
  ForecastMaxInt get forecastMaxInt;

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewIntensityImplCopyWith<_$EewIntensityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastMaxInt _$ForecastMaxIntFromJson(Map<String, dynamic> json) {
  return _ForecastMaxInt.fromJson(json);
}

/// @nodoc
mixin _$ForecastMaxInt {
  /// 最大予測震度の下限
  String get from => throw _privateConstructorUsedError;

  /// 最大予測震度の上限
  String get to => throw _privateConstructorUsedError;

  /// Serializes this ForecastMaxInt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastMaxInt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastMaxIntCopyWith<ForecastMaxInt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastMaxIntCopyWith<$Res> {
  factory $ForecastMaxIntCopyWith(
          ForecastMaxInt value, $Res Function(ForecastMaxInt) then) =
      _$ForecastMaxIntCopyWithImpl<$Res, ForecastMaxInt>;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$ForecastMaxIntCopyWithImpl<$Res, $Val extends ForecastMaxInt>
    implements $ForecastMaxIntCopyWith<$Res> {
  _$ForecastMaxIntCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastMaxInt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastMaxIntImplCopyWith<$Res>
    implements $ForecastMaxIntCopyWith<$Res> {
  factory _$$ForecastMaxIntImplCopyWith(_$ForecastMaxIntImpl value,
          $Res Function(_$ForecastMaxIntImpl) then) =
      __$$ForecastMaxIntImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$$ForecastMaxIntImplCopyWithImpl<$Res>
    extends _$ForecastMaxIntCopyWithImpl<$Res, _$ForecastMaxIntImpl>
    implements _$$ForecastMaxIntImplCopyWith<$Res> {
  __$$ForecastMaxIntImplCopyWithImpl(
      _$ForecastMaxIntImpl _value, $Res Function(_$ForecastMaxIntImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastMaxInt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$ForecastMaxIntImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastMaxIntImpl implements _ForecastMaxInt {
  const _$ForecastMaxIntImpl({required this.from, required this.to});

  factory _$ForecastMaxIntImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastMaxIntImplFromJson(json);

  /// 最大予測震度の下限
  @override
  final String from;

  /// 最大予測震度の上限
  @override
  final String to;

  @override
  String toString() {
    return 'ForecastMaxInt(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastMaxIntImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of ForecastMaxInt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastMaxIntImplCopyWith<_$ForecastMaxIntImpl> get copyWith =>
      __$$ForecastMaxIntImplCopyWithImpl<_$ForecastMaxIntImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastMaxIntImplToJson(
      this,
    );
  }
}

abstract class _ForecastMaxInt implements ForecastMaxInt {
  const factory _ForecastMaxInt(
      {required final String from,
      required final String to}) = _$ForecastMaxIntImpl;

  factory _ForecastMaxInt.fromJson(Map<String, dynamic> json) =
      _$ForecastMaxIntImpl.fromJson;

  /// 最大予測震度の下限
  @override
  String get from;

  /// 最大予測震度の上限
  @override
  String get to;

  /// Create a copy of ForecastMaxInt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastMaxIntImplCopyWith<_$ForecastMaxIntImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
