// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeListResponse _$EarthquakeListResponseFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeListResponse.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeListResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// 地震情報リスト
  List<EarthquakeListItem> get items => throw _privateConstructorUsedError;

  /// PuLL時に使用する
  String get nextPooling => throw _privateConstructorUsedError;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  int get nextPoolingInterval => throw _privateConstructorUsedError;

  /// 次のリソースがある場合に出現
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeListResponseCopyWith<EarthquakeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeListResponseCopyWith<$Res> {
  factory $EarthquakeListResponseCopyWith(EarthquakeListResponse value,
          $Res Function(EarthquakeListResponse) then) =
      _$EarthquakeListResponseCopyWithImpl<$Res, EarthquakeListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EarthquakeListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class _$EarthquakeListResponseCopyWithImpl<$Res,
        $Val extends EarthquakeListResponse>
    implements $EarthquakeListResponseCopyWith<$Res> {
  _$EarthquakeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeListResponse
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
              as List<EarthquakeListItem>,
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
abstract class _$$EarthquakeListResponseImplCopyWith<$Res>
    implements $EarthquakeListResponseCopyWith<$Res> {
  factory _$$EarthquakeListResponseImplCopyWith(
          _$EarthquakeListResponseImpl value,
          $Res Function(_$EarthquakeListResponseImpl) then) =
      __$$EarthquakeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<EarthquakeListItem> items,
      String nextPooling,
      int nextPoolingInterval,
      String? nextToken});
}

/// @nodoc
class __$$EarthquakeListResponseImplCopyWithImpl<$Res>
    extends _$EarthquakeListResponseCopyWithImpl<$Res,
        _$EarthquakeListResponseImpl>
    implements _$$EarthquakeListResponseImplCopyWith<$Res> {
  __$$EarthquakeListResponseImplCopyWithImpl(
      _$EarthquakeListResponseImpl _value,
      $Res Function(_$EarthquakeListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeListResponse
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
    return _then(_$EarthquakeListResponseImpl(
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
              as List<EarthquakeListItem>,
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
class _$EarthquakeListResponseImpl implements _EarthquakeListResponse {
  const _$EarthquakeListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required final List<EarthquakeListItem> items,
      required this.nextPooling,
      required this.nextPoolingInterval,
      this.nextToken})
      : _items = items;

  factory _$EarthquakeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeListResponseImplFromJson(json);

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

  /// 地震情報リスト
  final List<EarthquakeListItem> _items;

  /// 地震情報リスト
  @override
  List<EarthquakeListItem> get items {
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
    return 'EarthquakeListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, nextPooling: $nextPooling, nextPoolingInterval: $nextPoolingInterval, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeListResponseImpl &&
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

  /// Create a copy of EarthquakeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeListResponseImplCopyWith<_$EarthquakeListResponseImpl>
      get copyWith => __$$EarthquakeListResponseImplCopyWithImpl<
          _$EarthquakeListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeListResponseImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeListResponse implements EarthquakeListResponse {
  const factory _EarthquakeListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final List<EarthquakeListItem> items,
      required final String nextPooling,
      required final int nextPoolingInterval,
      final String? nextToken}) = _$EarthquakeListResponseImpl;

  factory _EarthquakeListResponse.fromJson(Map<String, dynamic> json) =
      _$EarthquakeListResponseImpl.fromJson;

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

  /// 地震情報リスト
  @override
  List<EarthquakeListItem> get items;

  /// PuLL時に使用する
  @override
  String get nextPooling;

  /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
  @override
  int get nextPoolingInterval;

  /// 次のリソースがある場合に出現
  @override
  String? get nextToken;

  /// Create a copy of EarthquakeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeListResponseImplCopyWith<_$EarthquakeListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarthquakeListItem _$EarthquakeListItemFromJson(Map<String, dynamic> json) {
  return _EarthquakeListItem.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeListItem {
  /// ID
  /// `int` or `String<int>`
  dynamic get id => throw _privateConstructorUsedError;

  /// 国内地震情報か、遠地地震情報かを区別する
  /// `normal` は 国内地震情報（震源・震度に関する情報など）、`distant` は 遠地地震情報
  String get type => throw _privateConstructorUsedError;

  /// 地震情報のEventID
  String get eventId => throw _privateConstructorUsedError;

  /// 地震検知時刻
  String get arrivalTime => throw _privateConstructorUsedError;

  /// 地震発生時刻
  /// 震度速報のみの場合は出現しない
  String? get originTime => throw _privateConstructorUsedError;

  /// 震源要素
  /// 震度速報のみの場合は出現しない
  Hypocenter? get hypocenter => throw _privateConstructorUsedError;

  /// マグニチュード要素
  /// 震度速報のみの場合は出現しない
  Magnitude? get magnitude => throw _privateConstructorUsedError;

  /// 最大震度、観測した震度がない場合はnullとする
  String? get maxInt => throw _privateConstructorUsedError;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  String? get maxLgInt => throw _privateConstructorUsedError;

  /// 長周期地震動に関する観測情報の種類
  /// 場合による
  String? get lgCategory => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeListItemCopyWith<EarthquakeListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeListItemCopyWith<$Res> {
  factory $EarthquakeListItemCopyWith(
          EarthquakeListItem value, $Res Function(EarthquakeListItem) then) =
      _$EarthquakeListItemCopyWithImpl<$Res, EarthquakeListItem>;
  @useResult
  $Res call(
      {dynamic id,
      String type,
      String eventId,
      String arrivalTime,
      String? originTime,
      Hypocenter? hypocenter,
      Magnitude? magnitude,
      String? maxInt,
      String? maxLgInt,
      String? lgCategory});

  $HypocenterCopyWith<$Res>? get hypocenter;
  $MagnitudeCopyWith<$Res>? get magnitude;
}

/// @nodoc
class _$EarthquakeListItemCopyWithImpl<$Res, $Val extends EarthquakeListItem>
    implements $EarthquakeListItemCopyWith<$Res> {
  _$EarthquakeListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? eventId = null,
    Object? arrivalTime = null,
    Object? originTime = freezed,
    Object? hypocenter = freezed,
    Object? magnitude = freezed,
    Object? maxInt = freezed,
    Object? maxLgInt = freezed,
    Object? lgCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as String?,
      hypocenter: freezed == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as Hypocenter?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude?,
      maxInt: freezed == maxInt
          ? _value.maxInt
          : maxInt // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLgInt: freezed == maxLgInt
          ? _value.maxLgInt
          : maxLgInt // ignore: cast_nullable_to_non_nullable
              as String?,
      lgCategory: freezed == lgCategory
          ? _value.lgCategory
          : lgCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HypocenterCopyWith<$Res>? get hypocenter {
    if (_value.hypocenter == null) {
      return null;
    }

    return $HypocenterCopyWith<$Res>(_value.hypocenter!, (value) {
      return _then(_value.copyWith(hypocenter: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MagnitudeCopyWith<$Res>? get magnitude {
    if (_value.magnitude == null) {
      return null;
    }

    return $MagnitudeCopyWith<$Res>(_value.magnitude!, (value) {
      return _then(_value.copyWith(magnitude: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeListItemImplCopyWith<$Res>
    implements $EarthquakeListItemCopyWith<$Res> {
  factory _$$EarthquakeListItemImplCopyWith(_$EarthquakeListItemImpl value,
          $Res Function(_$EarthquakeListItemImpl) then) =
      __$$EarthquakeListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String type,
      String eventId,
      String arrivalTime,
      String? originTime,
      Hypocenter? hypocenter,
      Magnitude? magnitude,
      String? maxInt,
      String? maxLgInt,
      String? lgCategory});

  @override
  $HypocenterCopyWith<$Res>? get hypocenter;
  @override
  $MagnitudeCopyWith<$Res>? get magnitude;
}

/// @nodoc
class __$$EarthquakeListItemImplCopyWithImpl<$Res>
    extends _$EarthquakeListItemCopyWithImpl<$Res, _$EarthquakeListItemImpl>
    implements _$$EarthquakeListItemImplCopyWith<$Res> {
  __$$EarthquakeListItemImplCopyWithImpl(_$EarthquakeListItemImpl _value,
      $Res Function(_$EarthquakeListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = null,
    Object? eventId = null,
    Object? arrivalTime = null,
    Object? originTime = freezed,
    Object? hypocenter = freezed,
    Object? magnitude = freezed,
    Object? maxInt = freezed,
    Object? maxLgInt = freezed,
    Object? lgCategory = freezed,
  }) {
    return _then(_$EarthquakeListItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as String?,
      hypocenter: freezed == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as Hypocenter?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude?,
      maxInt: freezed == maxInt
          ? _value.maxInt
          : maxInt // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLgInt: freezed == maxLgInt
          ? _value.maxLgInt
          : maxLgInt // ignore: cast_nullable_to_non_nullable
              as String?,
      lgCategory: freezed == lgCategory
          ? _value.lgCategory
          : lgCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeListItemImpl implements _EarthquakeListItem {
  const _$EarthquakeListItemImpl(
      {required this.id,
      required this.type,
      required this.eventId,
      required this.arrivalTime,
      this.originTime,
      this.hypocenter,
      this.magnitude,
      this.maxInt,
      this.maxLgInt,
      this.lgCategory});

  factory _$EarthquakeListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeListItemImplFromJson(json);

  /// ID
  /// `int` or `String<int>`
  @override
  final dynamic id;

  /// 国内地震情報か、遠地地震情報かを区別する
  /// `normal` は 国内地震情報（震源・震度に関する情報など）、`distant` は 遠地地震情報
  @override
  final String type;

  /// 地震情報のEventID
  @override
  final String eventId;

  /// 地震検知時刻
  @override
  final String arrivalTime;

  /// 地震発生時刻
  /// 震度速報のみの場合は出現しない
  @override
  final String? originTime;

  /// 震源要素
  /// 震度速報のみの場合は出現しない
  @override
  final Hypocenter? hypocenter;

  /// マグニチュード要素
  /// 震度速報のみの場合は出現しない
  @override
  final Magnitude? magnitude;

  /// 最大震度、観測した震度がない場合はnullとする
  @override
  final String? maxInt;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  @override
  final String? maxLgInt;

  /// 長周期地震動に関する観測情報の種類
  /// 場合による
  @override
  final String? lgCategory;

  @override
  String toString() {
    return 'EarthquakeListItem(id: $id, type: $type, eventId: $eventId, arrivalTime: $arrivalTime, originTime: $originTime, hypocenter: $hypocenter, magnitude: $magnitude, maxInt: $maxInt, maxLgInt: $maxLgInt, lgCategory: $lgCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeListItemImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
            (identical(other.hypocenter, hypocenter) ||
                other.hypocenter == hypocenter) &&
            (identical(other.magnitude, magnitude) ||
                other.magnitude == magnitude) &&
            (identical(other.maxInt, maxInt) || other.maxInt == maxInt) &&
            (identical(other.maxLgInt, maxLgInt) ||
                other.maxLgInt == maxLgInt) &&
            (identical(other.lgCategory, lgCategory) ||
                other.lgCategory == lgCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      type,
      eventId,
      arrivalTime,
      originTime,
      hypocenter,
      magnitude,
      maxInt,
      maxLgInt,
      lgCategory);

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeListItemImplCopyWith<_$EarthquakeListItemImpl> get copyWith =>
      __$$EarthquakeListItemImplCopyWithImpl<_$EarthquakeListItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeListItemImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeListItem implements EarthquakeListItem {
  const factory _EarthquakeListItem(
      {required final dynamic id,
      required final String type,
      required final String eventId,
      required final String arrivalTime,
      final String? originTime,
      final Hypocenter? hypocenter,
      final Magnitude? magnitude,
      final String? maxInt,
      final String? maxLgInt,
      final String? lgCategory}) = _$EarthquakeListItemImpl;

  factory _EarthquakeListItem.fromJson(Map<String, dynamic> json) =
      _$EarthquakeListItemImpl.fromJson;

  /// ID
  /// `int` or `String<int>`
  @override
  dynamic get id;

  /// 国内地震情報か、遠地地震情報かを区別する
  /// `normal` は 国内地震情報（震源・震度に関する情報など）、`distant` は 遠地地震情報
  @override
  String get type;

  /// 地震情報のEventID
  @override
  String get eventId;

  /// 地震検知時刻
  @override
  String get arrivalTime;

  /// 地震発生時刻
  /// 震度速報のみの場合は出現しない
  @override
  String? get originTime;

  /// 震源要素
  /// 震度速報のみの場合は出現しない
  @override
  Hypocenter? get hypocenter;

  /// マグニチュード要素
  /// 震度速報のみの場合は出現しない
  @override
  Magnitude? get magnitude;

  /// 最大震度、観測した震度がない場合はnullとする
  @override
  String? get maxInt;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  @override
  String? get maxLgInt;

  /// 長周期地震動に関する観測情報の種類
  /// 場合による
  @override
  String? get lgCategory;

  /// Create a copy of EarthquakeListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeListItemImplCopyWith<_$EarthquakeListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
