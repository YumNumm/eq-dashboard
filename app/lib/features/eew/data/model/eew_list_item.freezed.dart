// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eew_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EewListItem _$EewListItemFromJson(Map<String, dynamic> json) {
  return _EewListItem.fromJson(json);
}

/// @nodoc
mixin _$EewListItem {
  String get eventId => throw _privateConstructorUsedError;

  /// 報数
  int get serialNo => throw _privateConstructorUsedError;

  /// 最終報かどうか
  bool get isLastReport => throw _privateConstructorUsedError;

  /// 最終更新時刻
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// キャンセルされたかどうか
  bool get isCanceled => throw _privateConstructorUsedError;

  /// 警報が発表されたかどうか
  /// キャンセル報の場合は `null`
  bool? get isWarning => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  /// キャンセル報の場合は `null`
  EewEarthquake? get earthquake => throw _privateConstructorUsedError;

  /// キャンセル報の場合は `null`
  EewIntensity? get intensity => throw _privateConstructorUsedError;

  /// キャンセル報の場合は `null`
  List<EewIntensityRegion>? get intensityRegions =>
      throw _privateConstructorUsedError;

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
      {String eventId,
      int serialNo,
      bool isLastReport,
      DateTime updatedAt,
      bool isCanceled,
      bool? isWarning,
      String? text,
      EewEarthquake? earthquake,
      EewIntensity? intensity,
      List<EewIntensityRegion>? intensityRegions});

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
    Object? eventId = null,
    Object? serialNo = null,
    Object? isLastReport = null,
    Object? updatedAt = null,
    Object? isCanceled = null,
    Object? isWarning = freezed,
    Object? text = freezed,
    Object? earthquake = freezed,
    Object? intensity = freezed,
    Object? intensityRegions = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as int,
      isLastReport: null == isLastReport
          ? _value.isLastReport
          : isLastReport // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarning: freezed == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      earthquake: freezed == earthquake
          ? _value.earthquake
          : earthquake // ignore: cast_nullable_to_non_nullable
              as EewEarthquake?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as EewIntensity?,
      intensityRegions: freezed == intensityRegions
          ? _value.intensityRegions
          : intensityRegions // ignore: cast_nullable_to_non_nullable
              as List<EewIntensityRegion>?,
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
      {String eventId,
      int serialNo,
      bool isLastReport,
      DateTime updatedAt,
      bool isCanceled,
      bool? isWarning,
      String? text,
      EewEarthquake? earthquake,
      EewIntensity? intensity,
      List<EewIntensityRegion>? intensityRegions});

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
    Object? eventId = null,
    Object? serialNo = null,
    Object? isLastReport = null,
    Object? updatedAt = null,
    Object? isCanceled = null,
    Object? isWarning = freezed,
    Object? text = freezed,
    Object? earthquake = freezed,
    Object? intensity = freezed,
    Object? intensityRegions = freezed,
  }) {
    return _then(_$EewListItemImpl(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as int,
      isLastReport: null == isLastReport
          ? _value.isLastReport
          : isLastReport // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarning: freezed == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      earthquake: freezed == earthquake
          ? _value.earthquake
          : earthquake // ignore: cast_nullable_to_non_nullable
              as EewEarthquake?,
      intensity: freezed == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as EewIntensity?,
      intensityRegions: freezed == intensityRegions
          ? _value._intensityRegions
          : intensityRegions // ignore: cast_nullable_to_non_nullable
              as List<EewIntensityRegion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewListItemImpl implements _EewListItem {
  const _$EewListItemImpl(
      {required this.eventId,
      required this.serialNo,
      required this.isLastReport,
      required this.updatedAt,
      required this.isCanceled,
      required this.isWarning,
      required this.text,
      required this.earthquake,
      required this.intensity,
      required final List<EewIntensityRegion>? intensityRegions})
      : _intensityRegions = intensityRegions;

  factory _$EewListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewListItemImplFromJson(json);

  @override
  final String eventId;

  /// 報数
  @override
  final int serialNo;

  /// 最終報かどうか
  @override
  final bool isLastReport;

  /// 最終更新時刻
  @override
  final DateTime updatedAt;

  /// キャンセルされたかどうか
  @override
  final bool isCanceled;

  /// 警報が発表されたかどうか
  /// キャンセル報の場合は `null`
  @override
  final bool? isWarning;
  @override
  final String? text;

  /// キャンセル報の場合は `null`
  @override
  final EewEarthquake? earthquake;

  /// キャンセル報の場合は `null`
  @override
  final EewIntensity? intensity;

  /// キャンセル報の場合は `null`
  final List<EewIntensityRegion>? _intensityRegions;

  /// キャンセル報の場合は `null`
  @override
  List<EewIntensityRegion>? get intensityRegions {
    final value = _intensityRegions;
    if (value == null) return null;
    if (_intensityRegions is EqualUnmodifiableListView)
      return _intensityRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EewListItem(eventId: $eventId, serialNo: $serialNo, isLastReport: $isLastReport, updatedAt: $updatedAt, isCanceled: $isCanceled, isWarning: $isWarning, text: $text, earthquake: $earthquake, intensity: $intensity, intensityRegions: $intensityRegions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewListItemImpl &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.isLastReport, isLastReport) ||
                other.isLastReport == isLastReport) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
            (identical(other.isWarning, isWarning) ||
                other.isWarning == isWarning) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.earthquake, earthquake) ||
                other.earthquake == earthquake) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            const DeepCollectionEquality()
                .equals(other._intensityRegions, _intensityRegions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      eventId,
      serialNo,
      isLastReport,
      updatedAt,
      isCanceled,
      isWarning,
      text,
      earthquake,
      intensity,
      const DeepCollectionEquality().hash(_intensityRegions));

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
          {required final String eventId,
          required final int serialNo,
          required final bool isLastReport,
          required final DateTime updatedAt,
          required final bool isCanceled,
          required final bool? isWarning,
          required final String? text,
          required final EewEarthquake? earthquake,
          required final EewIntensity? intensity,
          required final List<EewIntensityRegion>? intensityRegions}) =
      _$EewListItemImpl;

  factory _EewListItem.fromJson(Map<String, dynamic> json) =
      _$EewListItemImpl.fromJson;

  @override
  String get eventId;

  /// 報数
  @override
  int get serialNo;

  /// 最終報かどうか
  @override
  bool get isLastReport;

  /// 最終更新時刻
  @override
  DateTime get updatedAt;

  /// キャンセルされたかどうか
  @override
  bool get isCanceled;

  /// 警報が発表されたかどうか
  /// キャンセル報の場合は `null`
  @override
  bool? get isWarning;
  @override
  String? get text;

  /// キャンセル報の場合は `null`
  @override
  EewEarthquake? get earthquake;

  /// キャンセル報の場合は `null`
  @override
  EewIntensity? get intensity;

  /// キャンセル報の場合は `null`
  @override
  List<EewIntensityRegion>? get intensityRegions;

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
  /// 地震発生時刻
  DateTime? get originTime => throw _privateConstructorUsedError;

  /// 地震検知時刻
  DateTime? get detectionTime => throw _privateConstructorUsedError;

  /// 仮定震源要素かどうか
  bool get isHypothetical => throw _privateConstructorUsedError;

  /// 震源地名コード
  String get hypocenterCode => throw _privateConstructorUsedError;

  /// 震源地名
  String get hypocenterName => throw _privateConstructorUsedError;

  /// 震源の緯度
  double? get latitude => throw _privateConstructorUsedError;

  /// 震源の経度
  double? get longitude => throw _privateConstructorUsedError;

  /// 震源の深さ
  /// `null`の場合 depthCondition はnot null
  int? get depth => throw _privateConstructorUsedError;

  /// 震源の深さ 例外表現
  /// `null`の場合 depth はnot null
  EewDepthCondition? get depthCondition => throw _privateConstructorUsedError;

  /// マグニチュード
  double? get magnitude => throw _privateConstructorUsedError;

  /// マグニチュードの例外表現
  /// `null`の場合 magnitude はnot null
  String? get magnitudeCondition => throw _privateConstructorUsedError;

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
      {DateTime? originTime,
      DateTime? detectionTime,
      bool isHypothetical,
      String hypocenterCode,
      String hypocenterName,
      double? latitude,
      double? longitude,
      int? depth,
      EewDepthCondition? depthCondition,
      double? magnitude,
      String? magnitudeCondition});
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
    Object? originTime = freezed,
    Object? detectionTime = freezed,
    Object? isHypothetical = null,
    Object? hypocenterCode = null,
    Object? hypocenterName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? depth = freezed,
    Object? depthCondition = freezed,
    Object? magnitude = freezed,
    Object? magnitudeCondition = freezed,
  }) {
    return _then(_value.copyWith(
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detectionTime: freezed == detectionTime
          ? _value.detectionTime
          : detectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isHypothetical: null == isHypothetical
          ? _value.isHypothetical
          : isHypothetical // ignore: cast_nullable_to_non_nullable
              as bool,
      hypocenterCode: null == hypocenterCode
          ? _value.hypocenterCode
          : hypocenterCode // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenterName: null == hypocenterName
          ? _value.hypocenterName
          : hypocenterName // ignore: cast_nullable_to_non_nullable
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
              as EewDepthCondition?,
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
abstract class _$$EewEarthquakeImplCopyWith<$Res>
    implements $EewEarthquakeCopyWith<$Res> {
  factory _$$EewEarthquakeImplCopyWith(
          _$EewEarthquakeImpl value, $Res Function(_$EewEarthquakeImpl) then) =
      __$$EewEarthquakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? originTime,
      DateTime? detectionTime,
      bool isHypothetical,
      String hypocenterCode,
      String hypocenterName,
      double? latitude,
      double? longitude,
      int? depth,
      EewDepthCondition? depthCondition,
      double? magnitude,
      String? magnitudeCondition});
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
    Object? originTime = freezed,
    Object? detectionTime = freezed,
    Object? isHypothetical = null,
    Object? hypocenterCode = null,
    Object? hypocenterName = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? depth = freezed,
    Object? depthCondition = freezed,
    Object? magnitude = freezed,
    Object? magnitudeCondition = freezed,
  }) {
    return _then(_$EewEarthquakeImpl(
      originTime: freezed == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detectionTime: freezed == detectionTime
          ? _value.detectionTime
          : detectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isHypothetical: null == isHypothetical
          ? _value.isHypothetical
          : isHypothetical // ignore: cast_nullable_to_non_nullable
              as bool,
      hypocenterCode: null == hypocenterCode
          ? _value.hypocenterCode
          : hypocenterCode // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenterName: null == hypocenterName
          ? _value.hypocenterName
          : hypocenterName // ignore: cast_nullable_to_non_nullable
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
              as EewDepthCondition?,
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
class _$EewEarthquakeImpl implements _EewEarthquake {
  const _$EewEarthquakeImpl(
      {required this.originTime,
      required this.detectionTime,
      required this.isHypothetical,
      required this.hypocenterCode,
      required this.hypocenterName,
      required this.latitude,
      required this.longitude,
      required this.depth,
      required this.depthCondition,
      required this.magnitude,
      required this.magnitudeCondition});

  factory _$EewEarthquakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewEarthquakeImplFromJson(json);

  /// 地震発生時刻
  @override
  final DateTime? originTime;

  /// 地震検知時刻
  @override
  final DateTime? detectionTime;

  /// 仮定震源要素かどうか
  @override
  final bool isHypothetical;

  /// 震源地名コード
  @override
  final String hypocenterCode;

  /// 震源地名
  @override
  final String hypocenterName;

  /// 震源の緯度
  @override
  final double? latitude;

  /// 震源の経度
  @override
  final double? longitude;

  /// 震源の深さ
  /// `null`の場合 depthCondition はnot null
  @override
  final int? depth;

  /// 震源の深さ 例外表現
  /// `null`の場合 depth はnot null
  @override
  final EewDepthCondition? depthCondition;

  /// マグニチュード
  @override
  final double? magnitude;

  /// マグニチュードの例外表現
  /// `null`の場合 magnitude はnot null
  @override
  final String? magnitudeCondition;

  @override
  String toString() {
    return 'EewEarthquake(originTime: $originTime, detectionTime: $detectionTime, isHypothetical: $isHypothetical, hypocenterCode: $hypocenterCode, hypocenterName: $hypocenterName, latitude: $latitude, longitude: $longitude, depth: $depth, depthCondition: $depthCondition, magnitude: $magnitude, magnitudeCondition: $magnitudeCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewEarthquakeImpl &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
            (identical(other.detectionTime, detectionTime) ||
                other.detectionTime == detectionTime) &&
            (identical(other.isHypothetical, isHypothetical) ||
                other.isHypothetical == isHypothetical) &&
            (identical(other.hypocenterCode, hypocenterCode) ||
                other.hypocenterCode == hypocenterCode) &&
            (identical(other.hypocenterName, hypocenterName) ||
                other.hypocenterName == hypocenterName) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      originTime,
      detectionTime,
      isHypothetical,
      hypocenterCode,
      hypocenterName,
      latitude,
      longitude,
      depth,
      depthCondition,
      magnitude,
      magnitudeCondition);

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
      {required final DateTime? originTime,
      required final DateTime? detectionTime,
      required final bool isHypothetical,
      required final String hypocenterCode,
      required final String hypocenterName,
      required final double? latitude,
      required final double? longitude,
      required final int? depth,
      required final EewDepthCondition? depthCondition,
      required final double? magnitude,
      required final String? magnitudeCondition}) = _$EewEarthquakeImpl;

  factory _EewEarthquake.fromJson(Map<String, dynamic> json) =
      _$EewEarthquakeImpl.fromJson;

  /// 地震発生時刻
  @override
  DateTime? get originTime;

  /// 地震検知時刻
  @override
  DateTime? get detectionTime;

  /// 仮定震源要素かどうか
  @override
  bool get isHypothetical;

  /// 震源地名コード
  @override
  String get hypocenterCode;

  /// 震源地名
  @override
  String get hypocenterName;

  /// 震源の緯度
  @override
  double? get latitude;

  /// 震源の経度
  @override
  double? get longitude;

  /// 震源の深さ
  /// `null`の場合 depthCondition はnot null
  @override
  int? get depth;

  /// 震源の深さ 例外表現
  /// `null`の場合 depth はnot null
  @override
  EewDepthCondition? get depthCondition;

  /// マグニチュード
  @override
  double? get magnitude;

  /// マグニチュードの例外表現
  /// `null`の場合 magnitude はnot null
  @override
  String? get magnitudeCondition;

  /// Create a copy of EewEarthquake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewEarthquakeImplCopyWith<_$EewEarthquakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewIntensity _$EewIntensityFromJson(Map<String, dynamic> json) {
  return _EewIntensity.fromJson(json);
}

/// @nodoc
mixin _$EewIntensity {
  JmaForecastIntensity get forecastMaxIntensity =>
      throw _privateConstructorUsedError;
  JmaForecastLgIntensity? get forecastMaxLgIntensity =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {JmaForecastIntensity forecastMaxIntensity,
      JmaForecastLgIntensity? forecastMaxLgIntensity});

  $JmaForecastIntensityCopyWith<$Res> get forecastMaxIntensity;
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastMaxLgIntensity;
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
    Object? forecastMaxIntensity = null,
    Object? forecastMaxLgIntensity = freezed,
  }) {
    return _then(_value.copyWith(
      forecastMaxIntensity: null == forecastMaxIntensity
          ? _value.forecastMaxIntensity
          : forecastMaxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      forecastMaxLgIntensity: freezed == forecastMaxLgIntensity
          ? _value.forecastMaxLgIntensity
          : forecastMaxLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastLgIntensity?,
    ) as $Val);
  }

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JmaForecastIntensityCopyWith<$Res> get forecastMaxIntensity {
    return $JmaForecastIntensityCopyWith<$Res>(_value.forecastMaxIntensity,
        (value) {
      return _then(_value.copyWith(forecastMaxIntensity: value) as $Val);
    });
  }

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastMaxLgIntensity {
    if (_value.forecastMaxLgIntensity == null) {
      return null;
    }

    return $JmaForecastLgIntensityCopyWith<$Res>(_value.forecastMaxLgIntensity!,
        (value) {
      return _then(_value.copyWith(forecastMaxLgIntensity: value) as $Val);
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
  $Res call(
      {JmaForecastIntensity forecastMaxIntensity,
      JmaForecastLgIntensity? forecastMaxLgIntensity});

  @override
  $JmaForecastIntensityCopyWith<$Res> get forecastMaxIntensity;
  @override
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastMaxLgIntensity;
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
    Object? forecastMaxIntensity = null,
    Object? forecastMaxLgIntensity = freezed,
  }) {
    return _then(_$EewIntensityImpl(
      forecastMaxIntensity: null == forecastMaxIntensity
          ? _value.forecastMaxIntensity
          : forecastMaxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      forecastMaxLgIntensity: freezed == forecastMaxLgIntensity
          ? _value.forecastMaxLgIntensity
          : forecastMaxLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastLgIntensity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewIntensityImpl implements _EewIntensity {
  const _$EewIntensityImpl(
      {required this.forecastMaxIntensity,
      required this.forecastMaxLgIntensity});

  factory _$EewIntensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewIntensityImplFromJson(json);

  @override
  final JmaForecastIntensity forecastMaxIntensity;
  @override
  final JmaForecastLgIntensity? forecastMaxLgIntensity;

  @override
  String toString() {
    return 'EewIntensity(forecastMaxIntensity: $forecastMaxIntensity, forecastMaxLgIntensity: $forecastMaxLgIntensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewIntensityImpl &&
            (identical(other.forecastMaxIntensity, forecastMaxIntensity) ||
                other.forecastMaxIntensity == forecastMaxIntensity) &&
            (identical(other.forecastMaxLgIntensity, forecastMaxLgIntensity) ||
                other.forecastMaxLgIntensity == forecastMaxLgIntensity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, forecastMaxIntensity, forecastMaxLgIntensity);

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
  const factory _EewIntensity(
          {required final JmaForecastIntensity forecastMaxIntensity,
          required final JmaForecastLgIntensity? forecastMaxLgIntensity}) =
      _$EewIntensityImpl;

  factory _EewIntensity.fromJson(Map<String, dynamic> json) =
      _$EewIntensityImpl.fromJson;

  @override
  JmaForecastIntensity get forecastMaxIntensity;
  @override
  JmaForecastLgIntensity? get forecastMaxLgIntensity;

  /// Create a copy of EewIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewIntensityImplCopyWith<_$EewIntensityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EewIntensityRegion _$EewIntensityRegionFromJson(Map<String, dynamic> json) {
  return _EewIntensityRegion.fromJson(json);
}

/// @nodoc
mixin _$EewIntensityRegion {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isPlum => throw _privateConstructorUsedError;
  bool get isWarning => throw _privateConstructorUsedError;
  JmaForecastIntensity get forecastIntensity =>
      throw _privateConstructorUsedError;
  JmaForecastLgIntensity? get forecastLgIntensity =>
      throw _privateConstructorUsedError;

  /// 既に主要動が到達したかどうか
  bool get isSWaveArrived => throw _privateConstructorUsedError;

  /// 主要動の到達予想時刻
  /// `isPlum == true`の場合は、「PLUM法でその階級震度を初めて予測した時刻」
  DateTime? get sWaveArrivalEstimatedAt => throw _privateConstructorUsedError;

  /// Serializes this EewIntensityRegion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewIntensityRegionCopyWith<EewIntensityRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewIntensityRegionCopyWith<$Res> {
  factory $EewIntensityRegionCopyWith(
          EewIntensityRegion value, $Res Function(EewIntensityRegion) then) =
      _$EewIntensityRegionCopyWithImpl<$Res, EewIntensityRegion>;
  @useResult
  $Res call(
      {String code,
      String name,
      bool isPlum,
      bool isWarning,
      JmaForecastIntensity forecastIntensity,
      JmaForecastLgIntensity? forecastLgIntensity,
      bool isSWaveArrived,
      DateTime? sWaveArrivalEstimatedAt});

  $JmaForecastIntensityCopyWith<$Res> get forecastIntensity;
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastLgIntensity;
}

/// @nodoc
class _$EewIntensityRegionCopyWithImpl<$Res, $Val extends EewIntensityRegion>
    implements $EewIntensityRegionCopyWith<$Res> {
  _$EewIntensityRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? isPlum = null,
    Object? isWarning = null,
    Object? forecastIntensity = null,
    Object? forecastLgIntensity = freezed,
    Object? isSWaveArrived = null,
    Object? sWaveArrivalEstimatedAt = freezed,
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
      isPlum: null == isPlum
          ? _value.isPlum
          : isPlum // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarning: null == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      forecastIntensity: null == forecastIntensity
          ? _value.forecastIntensity
          : forecastIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      forecastLgIntensity: freezed == forecastLgIntensity
          ? _value.forecastLgIntensity
          : forecastLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastLgIntensity?,
      isSWaveArrived: null == isSWaveArrived
          ? _value.isSWaveArrived
          : isSWaveArrived // ignore: cast_nullable_to_non_nullable
              as bool,
      sWaveArrivalEstimatedAt: freezed == sWaveArrivalEstimatedAt
          ? _value.sWaveArrivalEstimatedAt
          : sWaveArrivalEstimatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JmaForecastIntensityCopyWith<$Res> get forecastIntensity {
    return $JmaForecastIntensityCopyWith<$Res>(_value.forecastIntensity,
        (value) {
      return _then(_value.copyWith(forecastIntensity: value) as $Val);
    });
  }

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastLgIntensity {
    if (_value.forecastLgIntensity == null) {
      return null;
    }

    return $JmaForecastLgIntensityCopyWith<$Res>(_value.forecastLgIntensity!,
        (value) {
      return _then(_value.copyWith(forecastLgIntensity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EewIntensityRegionImplCopyWith<$Res>
    implements $EewIntensityRegionCopyWith<$Res> {
  factory _$$EewIntensityRegionImplCopyWith(_$EewIntensityRegionImpl value,
          $Res Function(_$EewIntensityRegionImpl) then) =
      __$$EewIntensityRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String name,
      bool isPlum,
      bool isWarning,
      JmaForecastIntensity forecastIntensity,
      JmaForecastLgIntensity? forecastLgIntensity,
      bool isSWaveArrived,
      DateTime? sWaveArrivalEstimatedAt});

  @override
  $JmaForecastIntensityCopyWith<$Res> get forecastIntensity;
  @override
  $JmaForecastLgIntensityCopyWith<$Res>? get forecastLgIntensity;
}

/// @nodoc
class __$$EewIntensityRegionImplCopyWithImpl<$Res>
    extends _$EewIntensityRegionCopyWithImpl<$Res, _$EewIntensityRegionImpl>
    implements _$$EewIntensityRegionImplCopyWith<$Res> {
  __$$EewIntensityRegionImplCopyWithImpl(_$EewIntensityRegionImpl _value,
      $Res Function(_$EewIntensityRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? isPlum = null,
    Object? isWarning = null,
    Object? forecastIntensity = null,
    Object? forecastLgIntensity = freezed,
    Object? isSWaveArrived = null,
    Object? sWaveArrivalEstimatedAt = freezed,
  }) {
    return _then(_$EewIntensityRegionImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPlum: null == isPlum
          ? _value.isPlum
          : isPlum // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarning: null == isWarning
          ? _value.isWarning
          : isWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      forecastIntensity: null == forecastIntensity
          ? _value.forecastIntensity
          : forecastIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      forecastLgIntensity: freezed == forecastLgIntensity
          ? _value.forecastLgIntensity
          : forecastLgIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastLgIntensity?,
      isSWaveArrived: null == isSWaveArrived
          ? _value.isSWaveArrived
          : isSWaveArrived // ignore: cast_nullable_to_non_nullable
              as bool,
      sWaveArrivalEstimatedAt: freezed == sWaveArrivalEstimatedAt
          ? _value.sWaveArrivalEstimatedAt
          : sWaveArrivalEstimatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewIntensityRegionImpl implements _EewIntensityRegion {
  const _$EewIntensityRegionImpl(
      {required this.code,
      required this.name,
      required this.isPlum,
      required this.isWarning,
      required this.forecastIntensity,
      required this.forecastLgIntensity,
      required this.isSWaveArrived,
      required this.sWaveArrivalEstimatedAt});

  factory _$EewIntensityRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewIntensityRegionImplFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final bool isPlum;
  @override
  final bool isWarning;
  @override
  final JmaForecastIntensity forecastIntensity;
  @override
  final JmaForecastLgIntensity? forecastLgIntensity;

  /// 既に主要動が到達したかどうか
  @override
  final bool isSWaveArrived;

  /// 主要動の到達予想時刻
  /// `isPlum == true`の場合は、「PLUM法でその階級震度を初めて予測した時刻」
  @override
  final DateTime? sWaveArrivalEstimatedAt;

  @override
  String toString() {
    return 'EewIntensityRegion(code: $code, name: $name, isPlum: $isPlum, isWarning: $isWarning, forecastIntensity: $forecastIntensity, forecastLgIntensity: $forecastLgIntensity, isSWaveArrived: $isSWaveArrived, sWaveArrivalEstimatedAt: $sWaveArrivalEstimatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewIntensityRegionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPlum, isPlum) || other.isPlum == isPlum) &&
            (identical(other.isWarning, isWarning) ||
                other.isWarning == isWarning) &&
            (identical(other.forecastIntensity, forecastIntensity) ||
                other.forecastIntensity == forecastIntensity) &&
            (identical(other.forecastLgIntensity, forecastLgIntensity) ||
                other.forecastLgIntensity == forecastLgIntensity) &&
            (identical(other.isSWaveArrived, isSWaveArrived) ||
                other.isSWaveArrived == isSWaveArrived) &&
            (identical(
                    other.sWaveArrivalEstimatedAt, sWaveArrivalEstimatedAt) ||
                other.sWaveArrivalEstimatedAt == sWaveArrivalEstimatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      name,
      isPlum,
      isWarning,
      forecastIntensity,
      forecastLgIntensity,
      isSWaveArrived,
      sWaveArrivalEstimatedAt);

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewIntensityRegionImplCopyWith<_$EewIntensityRegionImpl> get copyWith =>
      __$$EewIntensityRegionImplCopyWithImpl<_$EewIntensityRegionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewIntensityRegionImplToJson(
      this,
    );
  }
}

abstract class _EewIntensityRegion implements EewIntensityRegion {
  const factory _EewIntensityRegion(
          {required final String code,
          required final String name,
          required final bool isPlum,
          required final bool isWarning,
          required final JmaForecastIntensity forecastIntensity,
          required final JmaForecastLgIntensity? forecastLgIntensity,
          required final bool isSWaveArrived,
          required final DateTime? sWaveArrivalEstimatedAt}) =
      _$EewIntensityRegionImpl;

  factory _EewIntensityRegion.fromJson(Map<String, dynamic> json) =
      _$EewIntensityRegionImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  bool get isPlum;
  @override
  bool get isWarning;
  @override
  JmaForecastIntensity get forecastIntensity;
  @override
  JmaForecastLgIntensity? get forecastLgIntensity;

  /// 既に主要動が到達したかどうか
  @override
  bool get isSWaveArrived;

  /// 主要動の到達予想時刻
  /// `isPlum == true`の場合は、「PLUM法でその階級震度を初めて予測した時刻」
  @override
  DateTime? get sWaveArrivalEstimatedAt;

  /// Create a copy of EewIntensityRegion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewIntensityRegionImplCopyWith<_$EewIntensityRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
