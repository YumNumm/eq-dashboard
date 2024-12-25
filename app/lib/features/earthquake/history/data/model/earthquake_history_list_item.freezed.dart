// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_history_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeHistoryListItem _$EarthquakeHistoryListItemFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeHistoryListItem.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeHistoryListItem {
  /// 地震情報のEventId
  String get eventId => throw _privateConstructorUsedError;

  /// 地震検知時刻
  DateTime get arrivalTime => throw _privateConstructorUsedError;

  /// 地震発生時刻
  /// 震度速報のみの場合は`null`
  DateTime? get originTime => throw _privateConstructorUsedError;

  /// 最大震度
  /// 観測した震度がない場合は`null`
  JmaIntensity? get maxIntensity => throw _privateConstructorUsedError;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  JmaLgIntensity? get maxLgIntensity => throw _privateConstructorUsedError;

  /// 震源
  EarthquakeHistoryHypocenter? get hypocenter =>
      throw _privateConstructorUsedError;

  /// 地震の種類
  EarthquakeType? get earthquakeType => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeHistoryListItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeHistoryListItemCopyWith<EarthquakeHistoryListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeHistoryListItemCopyWith<$Res> {
  factory $EarthquakeHistoryListItemCopyWith(EarthquakeHistoryListItem value,
          $Res Function(EarthquakeHistoryListItem) then) =
      _$EarthquakeHistoryListItemCopyWithImpl<$Res, EarthquakeHistoryListItem>;
  @useResult
  $Res call(
      {String eventId,
      DateTime arrivalTime,
      DateTime? originTime,
      JmaIntensity? maxIntensity,
      JmaLgIntensity? maxLgIntensity,
      EarthquakeHistoryHypocenter? hypocenter,
      EarthquakeType? earthquakeType});

  $EarthquakeHistoryHypocenterCopyWith<$Res>? get hypocenter;
}

/// @nodoc
class _$EarthquakeHistoryListItemCopyWithImpl<$Res,
        $Val extends EarthquakeHistoryListItem>
    implements $EarthquakeHistoryListItemCopyWith<$Res> {
  _$EarthquakeHistoryListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? arrivalTime = null,
    Object? originTime = freezed,
    Object? maxIntensity = freezed,
    Object? maxLgIntensity = freezed,
    Object? hypocenter = freezed,
    Object? earthquakeType = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaIntensity?,
      maxLgIntensity: freezed == maxLgIntensity
          ? _value.maxLgIntensity
          : maxLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaLgIntensity?,
      hypocenter: freezed == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as EarthquakeHistoryHypocenter?,
      earthquakeType: freezed == earthquakeType
          ? _value.earthquakeType
          : earthquakeType // ignore: cast_nullable_to_non_nullable
              as EarthquakeType?,
    ) as $Val);
  }

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarthquakeHistoryHypocenterCopyWith<$Res>? get hypocenter {
    if (_value.hypocenter == null) {
      return null;
    }

    return $EarthquakeHistoryHypocenterCopyWith<$Res>(_value.hypocenter!,
        (value) {
      return _then(_value.copyWith(hypocenter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeHistoryListItemImplCopyWith<$Res>
    implements $EarthquakeHistoryListItemCopyWith<$Res> {
  factory _$$EarthquakeHistoryListItemImplCopyWith(
          _$EarthquakeHistoryListItemImpl value,
          $Res Function(_$EarthquakeHistoryListItemImpl) then) =
      __$$EarthquakeHistoryListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      DateTime arrivalTime,
      DateTime? originTime,
      JmaIntensity? maxIntensity,
      JmaLgIntensity? maxLgIntensity,
      EarthquakeHistoryHypocenter? hypocenter,
      EarthquakeType? earthquakeType});

  @override
  $EarthquakeHistoryHypocenterCopyWith<$Res>? get hypocenter;
}

/// @nodoc
class __$$EarthquakeHistoryListItemImplCopyWithImpl<$Res>
    extends _$EarthquakeHistoryListItemCopyWithImpl<$Res,
        _$EarthquakeHistoryListItemImpl>
    implements _$$EarthquakeHistoryListItemImplCopyWith<$Res> {
  __$$EarthquakeHistoryListItemImplCopyWithImpl(
      _$EarthquakeHistoryListItemImpl _value,
      $Res Function(_$EarthquakeHistoryListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? arrivalTime = null,
    Object? originTime = freezed,
    Object? maxIntensity = freezed,
    Object? maxLgIntensity = freezed,
    Object? hypocenter = freezed,
    Object? earthquakeType = freezed,
  }) {
    return _then(_$EarthquakeHistoryListItemImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaIntensity?,
      maxLgIntensity: freezed == maxLgIntensity
          ? _value.maxLgIntensity
          : maxLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaLgIntensity?,
      hypocenter: freezed == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as EarthquakeHistoryHypocenter?,
      earthquakeType: freezed == earthquakeType
          ? _value.earthquakeType
          : earthquakeType // ignore: cast_nullable_to_non_nullable
              as EarthquakeType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeHistoryListItemImpl implements _EarthquakeHistoryListItem {
  const _$EarthquakeHistoryListItemImpl(
      {required this.eventId,
      required this.arrivalTime,
      required this.originTime,
      required this.maxIntensity,
      required this.maxLgIntensity,
      required this.hypocenter,
      required this.earthquakeType});

  factory _$EarthquakeHistoryListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeHistoryListItemImplFromJson(json);

  /// 地震情報のEventId
  @override
  final String eventId;

  /// 地震検知時刻
  @override
  final DateTime arrivalTime;

  /// 地震発生時刻
  /// 震度速報のみの場合は`null`
  @override
  final DateTime? originTime;

  /// 最大震度
  /// 観測した震度がない場合は`null`
  @override
  final JmaIntensity? maxIntensity;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  @override
  final JmaLgIntensity? maxLgIntensity;

  /// 震源
  @override
  final EarthquakeHistoryHypocenter? hypocenter;

  /// 地震の種類
  @override
  final EarthquakeType? earthquakeType;

  @override
  String toString() {
    return 'EarthquakeHistoryListItem(eventId: $eventId, arrivalTime: $arrivalTime, originTime: $originTime, maxIntensity: $maxIntensity, maxLgIntensity: $maxLgIntensity, hypocenter: $hypocenter, earthquakeType: $earthquakeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeHistoryListItemImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
            (identical(other.maxIntensity, maxIntensity) ||
                other.maxIntensity == maxIntensity) &&
            (identical(other.maxLgIntensity, maxLgIntensity) ||
                other.maxLgIntensity == maxLgIntensity) &&
            (identical(other.hypocenter, hypocenter) ||
                other.hypocenter == hypocenter) &&
            (identical(other.earthquakeType, earthquakeType) ||
                other.earthquakeType == earthquakeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventId, arrivalTime, originTime,
      maxIntensity, maxLgIntensity, hypocenter, earthquakeType);

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeHistoryListItemImplCopyWith<_$EarthquakeHistoryListItemImpl>
      get copyWith => __$$EarthquakeHistoryListItemImplCopyWithImpl<
          _$EarthquakeHistoryListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeHistoryListItemImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeHistoryListItem implements EarthquakeHistoryListItem {
  const factory _EarthquakeHistoryListItem(
          {required final String eventId,
          required final DateTime arrivalTime,
          required final DateTime? originTime,
          required final JmaIntensity? maxIntensity,
          required final JmaLgIntensity? maxLgIntensity,
          required final EarthquakeHistoryHypocenter? hypocenter,
          required final EarthquakeType? earthquakeType}) =
      _$EarthquakeHistoryListItemImpl;

  factory _EarthquakeHistoryListItem.fromJson(Map<String, dynamic> json) =
      _$EarthquakeHistoryListItemImpl.fromJson;

  /// 地震情報のEventId
  @override
  String get eventId;

  /// 地震検知時刻
  @override
  DateTime get arrivalTime;

  /// 地震発生時刻
  /// 震度速報のみの場合は`null`
  @override
  DateTime? get originTime;

  /// 最大震度
  /// 観測した震度がない場合は`null`
  @override
  JmaIntensity? get maxIntensity;

  /// 観測した最大の長周期地震動階級
  /// 場合による
  @override
  JmaLgIntensity? get maxLgIntensity;

  /// 震源
  @override
  EarthquakeHistoryHypocenter? get hypocenter;

  /// 地震の種類
  @override
  EarthquakeType? get earthquakeType;

  /// Create a copy of EarthquakeHistoryListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeHistoryListItemImplCopyWith<_$EarthquakeHistoryListItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarthquakeHistoryHypocenter _$EarthquakeHistoryHypocenterFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeHistoryHypocenter.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeHistoryHypocenter {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  DepthCondition? get depthCondition => throw _privateConstructorUsedError;
  double? get magnitude => throw _privateConstructorUsedError;
  String? get magnitudeCondition => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeHistoryHypocenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeHistoryHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeHistoryHypocenterCopyWith<EarthquakeHistoryHypocenter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeHistoryHypocenterCopyWith<$Res> {
  factory $EarthquakeHistoryHypocenterCopyWith(
          EarthquakeHistoryHypocenter value,
          $Res Function(EarthquakeHistoryHypocenter) then) =
      _$EarthquakeHistoryHypocenterCopyWithImpl<$Res,
          EarthquakeHistoryHypocenter>;
  @useResult
  $Res call(
      {String name,
      String code,
      double? latitude,
      double? longitude,
      int? depth,
      DepthCondition? depthCondition,
      double? magnitude,
      String? magnitudeCondition});
}

/// @nodoc
class _$EarthquakeHistoryHypocenterCopyWithImpl<$Res,
        $Val extends EarthquakeHistoryHypocenter>
    implements $EarthquakeHistoryHypocenterCopyWith<$Res> {
  _$EarthquakeHistoryHypocenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeHistoryHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? depth = freezed,
    Object? depthCondition = freezed,
    Object? magnitude = freezed,
    Object? magnitudeCondition = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthCondition: freezed == depthCondition
          ? _value.depthCondition
          : depthCondition // ignore: cast_nullable_to_non_nullable
              as DepthCondition?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitudeCondition: freezed == magnitudeCondition
          ? _value.magnitudeCondition
          : magnitudeCondition // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeHistoryHypocenterImplCopyWith<$Res>
    implements $EarthquakeHistoryHypocenterCopyWith<$Res> {
  factory _$$EarthquakeHistoryHypocenterImplCopyWith(
          _$EarthquakeHistoryHypocenterImpl value,
          $Res Function(_$EarthquakeHistoryHypocenterImpl) then) =
      __$$EarthquakeHistoryHypocenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String code,
      double? latitude,
      double? longitude,
      int? depth,
      DepthCondition? depthCondition,
      double? magnitude,
      String? magnitudeCondition});
}

/// @nodoc
class __$$EarthquakeHistoryHypocenterImplCopyWithImpl<$Res>
    extends _$EarthquakeHistoryHypocenterCopyWithImpl<$Res,
        _$EarthquakeHistoryHypocenterImpl>
    implements _$$EarthquakeHistoryHypocenterImplCopyWith<$Res> {
  __$$EarthquakeHistoryHypocenterImplCopyWithImpl(
      _$EarthquakeHistoryHypocenterImpl _value,
      $Res Function(_$EarthquakeHistoryHypocenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeHistoryHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? depth = freezed,
    Object? depthCondition = freezed,
    Object? magnitude = freezed,
    Object? magnitudeCondition = freezed,
  }) {
    return _then(_$EarthquakeHistoryHypocenterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      depthCondition: freezed == depthCondition
          ? _value.depthCondition
          : depthCondition // ignore: cast_nullable_to_non_nullable
              as DepthCondition?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitudeCondition: freezed == magnitudeCondition
          ? _value.magnitudeCondition
          : magnitudeCondition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeHistoryHypocenterImpl
    implements _EarthquakeHistoryHypocenter {
  const _$EarthquakeHistoryHypocenterImpl(
      {required this.name,
      required this.code,
      required this.latitude,
      required this.longitude,
      required this.depth,
      required this.depthCondition,
      required this.magnitude,
      required this.magnitudeCondition});

  factory _$EarthquakeHistoryHypocenterImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EarthquakeHistoryHypocenterImplFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final int? depth;
  @override
  final DepthCondition? depthCondition;
  @override
  final double? magnitude;
  @override
  final String? magnitudeCondition;

  @override
  String toString() {
    return 'EarthquakeHistoryHypocenter(name: $name, code: $code, latitude: $latitude, longitude: $longitude, depth: $depth, depthCondition: $depthCondition, magnitude: $magnitude, magnitudeCondition: $magnitudeCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeHistoryHypocenterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.depthCondition, depthCondition) ||
                other.depthCondition == depthCondition) &&
            (identical(other.magnitude, magnitude) ||
                other.magnitude == magnitude) &&
            (identical(other.magnitudeCondition, magnitudeCondition) ||
                other.magnitudeCondition == magnitudeCondition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, latitude, longitude,
      depth, depthCondition, magnitude, magnitudeCondition);

  /// Create a copy of EarthquakeHistoryHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeHistoryHypocenterImplCopyWith<_$EarthquakeHistoryHypocenterImpl>
      get copyWith => __$$EarthquakeHistoryHypocenterImplCopyWithImpl<
          _$EarthquakeHistoryHypocenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeHistoryHypocenterImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeHistoryHypocenter
    implements EarthquakeHistoryHypocenter {
  const factory _EarthquakeHistoryHypocenter(
          {required final String name,
          required final String code,
          required final double? latitude,
          required final double? longitude,
          required final int? depth,
          required final DepthCondition? depthCondition,
          required final double? magnitude,
          required final String? magnitudeCondition}) =
      _$EarthquakeHistoryHypocenterImpl;

  factory _EarthquakeHistoryHypocenter.fromJson(Map<String, dynamic> json) =
      _$EarthquakeHistoryHypocenterImpl.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  int? get depth;
  @override
  DepthCondition? get depthCondition;
  @override
  double? get magnitude;
  @override
  String? get magnitudeCondition;

  /// Create a copy of EarthquakeHistoryHypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeHistoryHypocenterImplCopyWith<_$EarthquakeHistoryHypocenterImpl>
      get copyWith => throw _privateConstructorUsedError;
}
