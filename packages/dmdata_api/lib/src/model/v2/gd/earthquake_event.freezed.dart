// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeEvent _$EarthquakeEventFromJson(Map<String, dynamic> json) {
  return _EarthquakeEvent.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEvent {
  String get responseId => throw _privateConstructorUsedError;
  String get responseTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  EarthquakeEventData get event => throw _privateConstructorUsedError;
  DmDataError? get error => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEventCopyWith<EarthquakeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEventCopyWith<$Res> {
  factory $EarthquakeEventCopyWith(
          EarthquakeEvent value, $Res Function(EarthquakeEvent) then) =
      _$EarthquakeEventCopyWithImpl<$Res, EarthquakeEvent>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      EarthquakeEventData event,
      DmDataError? error});

  $EarthquakeEventDataCopyWith<$Res> get event;
  $DmDataErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$EarthquakeEventCopyWithImpl<$Res, $Val extends EarthquakeEvent>
    implements $EarthquakeEventCopyWith<$Res> {
  _$EarthquakeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? event = null,
    Object? error = freezed,
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EarthquakeEventData,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DmDataError?,
    ) as $Val);
  }

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EarthquakeEventDataCopyWith<$Res> get event {
    return $EarthquakeEventDataCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DmDataErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $DmDataErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeEventImplCopyWith<$Res>
    implements $EarthquakeEventCopyWith<$Res> {
  factory _$$EarthquakeEventImplCopyWith(_$EarthquakeEventImpl value,
          $Res Function(_$EarthquakeEventImpl) then) =
      __$$EarthquakeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      EarthquakeEventData event,
      DmDataError? error});

  @override
  $EarthquakeEventDataCopyWith<$Res> get event;
  @override
  $DmDataErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$EarthquakeEventImplCopyWithImpl<$Res>
    extends _$EarthquakeEventCopyWithImpl<$Res, _$EarthquakeEventImpl>
    implements _$$EarthquakeEventImplCopyWith<$Res> {
  __$$EarthquakeEventImplCopyWithImpl(
      _$EarthquakeEventImpl _value, $Res Function(_$EarthquakeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? event = null,
    Object? error = freezed,
  }) {
    return _then(_$EarthquakeEventImpl(
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
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EarthquakeEventData,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DmDataError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEventImpl implements _EarthquakeEvent {
  const _$EarthquakeEventImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required this.event,
      this.error});

  factory _$EarthquakeEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEventImplFromJson(json);

  @override
  final String responseId;
  @override
  final String responseTime;
  @override
  final String status;
  @override
  final EarthquakeEventData event;
  @override
  final DmDataError? error;

  @override
  String toString() {
    return 'EarthquakeEvent(responseId: $responseId, responseTime: $responseTime, status: $status, event: $event, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEventImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, responseId, responseTime, status, event, error);

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEventImplCopyWith<_$EarthquakeEventImpl> get copyWith =>
      __$$EarthquakeEventImplCopyWithImpl<_$EarthquakeEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEventImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEvent implements EarthquakeEvent {
  const factory _EarthquakeEvent(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      required final EarthquakeEventData event,
      final DmDataError? error}) = _$EarthquakeEventImpl;

  factory _EarthquakeEvent.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEventImpl.fromJson;

  @override
  String get responseId;
  @override
  String get responseTime;
  @override
  String get status;
  @override
  EarthquakeEventData get event;
  @override
  DmDataError? get error;

  /// Create a copy of EarthquakeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEventImplCopyWith<_$EarthquakeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarthquakeEventData _$EarthquakeEventDataFromJson(Map<String, dynamic> json) {
  return _EarthquakeEventData.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEventData {
  dynamic get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get arrivalTime => throw _privateConstructorUsedError;
  String? get originTime => throw _privateConstructorUsedError;
  Hypocenter? get hypocenter => throw _privateConstructorUsedError;
  Magnitude? get magnitude => throw _privateConstructorUsedError;
  String? get maxInt => throw _privateConstructorUsedError;
  String? get maxLgInt => throw _privateConstructorUsedError;
  String? get lgCategory => throw _privateConstructorUsedError;
  List<EarthquakeTelegram> get telegrams => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEventData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEventDataCopyWith<EarthquakeEventData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEventDataCopyWith<$Res> {
  factory $EarthquakeEventDataCopyWith(
          EarthquakeEventData value, $Res Function(EarthquakeEventData) then) =
      _$EarthquakeEventDataCopyWithImpl<$Res, EarthquakeEventData>;
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
      String? lgCategory,
      List<EarthquakeTelegram> telegrams});

  $HypocenterCopyWith<$Res>? get hypocenter;
  $MagnitudeCopyWith<$Res>? get magnitude;
}

/// @nodoc
class _$EarthquakeEventDataCopyWithImpl<$Res, $Val extends EarthquakeEventData>
    implements $EarthquakeEventDataCopyWith<$Res> {
  _$EarthquakeEventDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEventData
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
    Object? telegrams = null,
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
      telegrams: null == telegrams
          ? _value.telegrams
          : telegrams // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeTelegram>,
    ) as $Val);
  }

  /// Create a copy of EarthquakeEventData
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

  /// Create a copy of EarthquakeEventData
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
abstract class _$$EarthquakeEventDataImplCopyWith<$Res>
    implements $EarthquakeEventDataCopyWith<$Res> {
  factory _$$EarthquakeEventDataImplCopyWith(_$EarthquakeEventDataImpl value,
          $Res Function(_$EarthquakeEventDataImpl) then) =
      __$$EarthquakeEventDataImplCopyWithImpl<$Res>;
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
      String? lgCategory,
      List<EarthquakeTelegram> telegrams});

  @override
  $HypocenterCopyWith<$Res>? get hypocenter;
  @override
  $MagnitudeCopyWith<$Res>? get magnitude;
}

/// @nodoc
class __$$EarthquakeEventDataImplCopyWithImpl<$Res>
    extends _$EarthquakeEventDataCopyWithImpl<$Res, _$EarthquakeEventDataImpl>
    implements _$$EarthquakeEventDataImplCopyWith<$Res> {
  __$$EarthquakeEventDataImplCopyWithImpl(_$EarthquakeEventDataImpl _value,
      $Res Function(_$EarthquakeEventDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEventData
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
    Object? telegrams = null,
  }) {
    return _then(_$EarthquakeEventDataImpl(
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
      telegrams: null == telegrams
          ? _value._telegrams
          : telegrams // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeTelegram>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEventDataImpl implements _EarthquakeEventData {
  const _$EarthquakeEventDataImpl(
      {required this.id,
      required this.type,
      required this.eventId,
      required this.arrivalTime,
      this.originTime,
      this.hypocenter,
      this.magnitude,
      this.maxInt,
      this.maxLgInt,
      this.lgCategory,
      final List<EarthquakeTelegram> telegrams = const []})
      : _telegrams = telegrams;

  factory _$EarthquakeEventDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEventDataImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String type;
  @override
  final String eventId;
  @override
  final String arrivalTime;
  @override
  final String? originTime;
  @override
  final Hypocenter? hypocenter;
  @override
  final Magnitude? magnitude;
  @override
  final String? maxInt;
  @override
  final String? maxLgInt;
  @override
  final String? lgCategory;
  final List<EarthquakeTelegram> _telegrams;
  @override
  @JsonKey()
  List<EarthquakeTelegram> get telegrams {
    if (_telegrams is EqualUnmodifiableListView) return _telegrams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_telegrams);
  }

  @override
  String toString() {
    return 'EarthquakeEventData(id: $id, type: $type, eventId: $eventId, arrivalTime: $arrivalTime, originTime: $originTime, hypocenter: $hypocenter, magnitude: $magnitude, maxInt: $maxInt, maxLgInt: $maxLgInt, lgCategory: $lgCategory, telegrams: $telegrams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEventDataImpl &&
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
                other.lgCategory == lgCategory) &&
            const DeepCollectionEquality()
                .equals(other._telegrams, _telegrams));
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
      lgCategory,
      const DeepCollectionEquality().hash(_telegrams));

  /// Create a copy of EarthquakeEventData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEventDataImplCopyWith<_$EarthquakeEventDataImpl> get copyWith =>
      __$$EarthquakeEventDataImplCopyWithImpl<_$EarthquakeEventDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEventDataImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEventData implements EarthquakeEventData {
  const factory _EarthquakeEventData(
      {required final dynamic id,
      required final String type,
      required final String eventId,
      required final String arrivalTime,
      final String? originTime,
      final Hypocenter? hypocenter,
      final Magnitude? magnitude,
      final String? maxInt,
      final String? maxLgInt,
      final String? lgCategory,
      final List<EarthquakeTelegram> telegrams}) = _$EarthquakeEventDataImpl;

  factory _EarthquakeEventData.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEventDataImpl.fromJson;

  @override
  dynamic get id;
  @override
  String get type;
  @override
  String get eventId;
  @override
  String get arrivalTime;
  @override
  String? get originTime;
  @override
  Hypocenter? get hypocenter;
  @override
  Magnitude? get magnitude;
  @override
  String? get maxInt;
  @override
  String? get maxLgInt;
  @override
  String? get lgCategory;
  @override
  List<EarthquakeTelegram> get telegrams;

  /// Create a copy of EarthquakeEventData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEventDataImplCopyWith<_$EarthquakeEventDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarthquakeTelegram _$EarthquakeTelegramFromJson(Map<String, dynamic> json) {
  return _EarthquakeTelegram.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeTelegram {
  int get serial => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get originalId => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;
  TelegramHead get head => throw _privateConstructorUsedError;
  String get receivedTime => throw _privateConstructorUsedError;
  TelegramReport get xmlReport => throw _privateConstructorUsedError;
  TelegramSchema get schema => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeTelegram to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeTelegramCopyWith<EarthquakeTelegram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeTelegramCopyWith<$Res> {
  factory $EarthquakeTelegramCopyWith(
          EarthquakeTelegram value, $Res Function(EarthquakeTelegram) then) =
      _$EarthquakeTelegramCopyWithImpl<$Res, EarthquakeTelegram>;
  @useResult
  $Res call(
      {int serial,
      String id,
      String originalId,
      String classification,
      TelegramHead head,
      String receivedTime,
      TelegramReport xmlReport,
      TelegramSchema schema,
      String format,
      String url});

  $TelegramHeadCopyWith<$Res> get head;
  $TelegramReportCopyWith<$Res> get xmlReport;
  $TelegramSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class _$EarthquakeTelegramCopyWithImpl<$Res, $Val extends EarthquakeTelegram>
    implements $EarthquakeTelegramCopyWith<$Res> {
  _$EarthquakeTelegramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
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
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as int,
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
              as TelegramReport,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as TelegramSchema,
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

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramHeadCopyWith<$Res> get head {
    return $TelegramHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramReportCopyWith<$Res> get xmlReport {
    return $TelegramReportCopyWith<$Res>(_value.xmlReport, (value) {
      return _then(_value.copyWith(xmlReport: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramSchemaCopyWith<$Res> get schema {
    return $TelegramSchemaCopyWith<$Res>(_value.schema, (value) {
      return _then(_value.copyWith(schema: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeTelegramImplCopyWith<$Res>
    implements $EarthquakeTelegramCopyWith<$Res> {
  factory _$$EarthquakeTelegramImplCopyWith(_$EarthquakeTelegramImpl value,
          $Res Function(_$EarthquakeTelegramImpl) then) =
      __$$EarthquakeTelegramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int serial,
      String id,
      String originalId,
      String classification,
      TelegramHead head,
      String receivedTime,
      TelegramReport xmlReport,
      TelegramSchema schema,
      String format,
      String url});

  @override
  $TelegramHeadCopyWith<$Res> get head;
  @override
  $TelegramReportCopyWith<$Res> get xmlReport;
  @override
  $TelegramSchemaCopyWith<$Res> get schema;
}

/// @nodoc
class __$$EarthquakeTelegramImplCopyWithImpl<$Res>
    extends _$EarthquakeTelegramCopyWithImpl<$Res, _$EarthquakeTelegramImpl>
    implements _$$EarthquakeTelegramImplCopyWith<$Res> {
  __$$EarthquakeTelegramImplCopyWithImpl(_$EarthquakeTelegramImpl _value,
      $Res Function(_$EarthquakeTelegramImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial = null,
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
    return _then(_$EarthquakeTelegramImpl(
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as int,
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
              as TelegramReport,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as TelegramSchema,
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
class _$EarthquakeTelegramImpl implements _EarthquakeTelegram {
  const _$EarthquakeTelegramImpl(
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

  factory _$EarthquakeTelegramImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeTelegramImplFromJson(json);

  @override
  final int serial;
  @override
  final String id;
  @override
  final String originalId;
  @override
  final String classification;
  @override
  final TelegramHead head;
  @override
  final String receivedTime;
  @override
  final TelegramReport xmlReport;
  @override
  final TelegramSchema schema;
  @override
  final String format;
  @override
  final String url;

  @override
  String toString() {
    return 'EarthquakeTelegram(serial: $serial, id: $id, originalId: $originalId, classification: $classification, head: $head, receivedTime: $receivedTime, xmlReport: $xmlReport, schema: $schema, format: $format, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeTelegramImpl &&
            (identical(other.serial, serial) || other.serial == serial) &&
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
  int get hashCode => Object.hash(runtimeType, serial, id, originalId,
      classification, head, receivedTime, xmlReport, schema, format, url);

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeTelegramImplCopyWith<_$EarthquakeTelegramImpl> get copyWith =>
      __$$EarthquakeTelegramImplCopyWithImpl<_$EarthquakeTelegramImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeTelegramImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeTelegram implements EarthquakeTelegram {
  const factory _EarthquakeTelegram(
      {required final int serial,
      required final String id,
      required final String originalId,
      required final String classification,
      required final TelegramHead head,
      required final String receivedTime,
      required final TelegramReport xmlReport,
      required final TelegramSchema schema,
      required final String format,
      required final String url}) = _$EarthquakeTelegramImpl;

  factory _EarthquakeTelegram.fromJson(Map<String, dynamic> json) =
      _$EarthquakeTelegramImpl.fromJson;

  @override
  int get serial;
  @override
  String get id;
  @override
  String get originalId;
  @override
  String get classification;
  @override
  TelegramHead get head;
  @override
  String get receivedTime;
  @override
  TelegramReport get xmlReport;
  @override
  TelegramSchema get schema;
  @override
  String get format;
  @override
  String get url;

  /// Create a copy of EarthquakeTelegram
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeTelegramImplCopyWith<_$EarthquakeTelegramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelegramHead _$TelegramHeadFromJson(Map<String, dynamic> json) {
  return _TelegramHead.fromJson(json);
}

/// @nodoc
mixin _$TelegramHead {
  String get type => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  bool get test => throw _privateConstructorUsedError;
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

  @override
  final String type;
  @override
  final String author;
  @override
  final String time;
  @override
  final bool test;
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

  @override
  String get type;
  @override
  String get author;
  @override
  String get time;
  @override
  bool get test;
  @override
  String? get designation;

  /// Create a copy of TelegramHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramHeadImplCopyWith<_$TelegramHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelegramReport _$TelegramReportFromJson(Map<String, dynamic> json) {
  return _TelegramReport.fromJson(json);
}

/// @nodoc
mixin _$TelegramReport {
  TelegramReportHead get head => throw _privateConstructorUsedError;
  TelegramReportControl get control => throw _privateConstructorUsedError;

  /// Serializes this TelegramReport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramReportCopyWith<TelegramReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramReportCopyWith<$Res> {
  factory $TelegramReportCopyWith(
          TelegramReport value, $Res Function(TelegramReport) then) =
      _$TelegramReportCopyWithImpl<$Res, TelegramReport>;
  @useResult
  $Res call({TelegramReportHead head, TelegramReportControl control});

  $TelegramReportHeadCopyWith<$Res> get head;
  $TelegramReportControlCopyWith<$Res> get control;
}

/// @nodoc
class _$TelegramReportCopyWithImpl<$Res, $Val extends TelegramReport>
    implements $TelegramReportCopyWith<$Res> {
  _$TelegramReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = null,
    Object? control = null,
  }) {
    return _then(_value.copyWith(
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramReportHead,
      control: null == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as TelegramReportControl,
    ) as $Val);
  }

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramReportHeadCopyWith<$Res> get head {
    return $TelegramReportHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TelegramReportControlCopyWith<$Res> get control {
    return $TelegramReportControlCopyWith<$Res>(_value.control, (value) {
      return _then(_value.copyWith(control: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelegramReportImplCopyWith<$Res>
    implements $TelegramReportCopyWith<$Res> {
  factory _$$TelegramReportImplCopyWith(_$TelegramReportImpl value,
          $Res Function(_$TelegramReportImpl) then) =
      __$$TelegramReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TelegramReportHead head, TelegramReportControl control});

  @override
  $TelegramReportHeadCopyWith<$Res> get head;
  @override
  $TelegramReportControlCopyWith<$Res> get control;
}

/// @nodoc
class __$$TelegramReportImplCopyWithImpl<$Res>
    extends _$TelegramReportCopyWithImpl<$Res, _$TelegramReportImpl>
    implements _$$TelegramReportImplCopyWith<$Res> {
  __$$TelegramReportImplCopyWithImpl(
      _$TelegramReportImpl _value, $Res Function(_$TelegramReportImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? head = null,
    Object? control = null,
  }) {
    return _then(_$TelegramReportImpl(
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as TelegramReportHead,
      control: null == control
          ? _value.control
          : control // ignore: cast_nullable_to_non_nullable
              as TelegramReportControl,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramReportImpl implements _TelegramReport {
  const _$TelegramReportImpl({required this.head, required this.control});

  factory _$TelegramReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramReportImplFromJson(json);

  @override
  final TelegramReportHead head;
  @override
  final TelegramReportControl control;

  @override
  String toString() {
    return 'TelegramReport(head: $head, control: $control)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramReportImpl &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.control, control) || other.control == control));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, head, control);

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramReportImplCopyWith<_$TelegramReportImpl> get copyWith =>
      __$$TelegramReportImplCopyWithImpl<_$TelegramReportImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramReportImplToJson(
      this,
    );
  }
}

abstract class _TelegramReport implements TelegramReport {
  const factory _TelegramReport(
      {required final TelegramReportHead head,
      required final TelegramReportControl control}) = _$TelegramReportImpl;

  factory _TelegramReport.fromJson(Map<String, dynamic> json) =
      _$TelegramReportImpl.fromJson;

  @override
  TelegramReportHead get head;
  @override
  TelegramReportControl get control;

  /// Create a copy of TelegramReport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramReportImplCopyWith<_$TelegramReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelegramReportHead _$TelegramReportHeadFromJson(Map<String, dynamic> json) {
  return _TelegramReportHead.fromJson(json);
}

/// @nodoc
mixin _$TelegramReportHead {
  String get title => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get infoKind => throw _privateConstructorUsedError;
  String get infoType => throw _privateConstructorUsedError;
  String get reportDateTime => throw _privateConstructorUsedError;
  String get targetDateTime => throw _privateConstructorUsedError;
  String get infoKindVersion => throw _privateConstructorUsedError;

  /// Serializes this TelegramReportHead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramReportHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramReportHeadCopyWith<TelegramReportHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramReportHeadCopyWith<$Res> {
  factory $TelegramReportHeadCopyWith(
          TelegramReportHead value, $Res Function(TelegramReportHead) then) =
      _$TelegramReportHeadCopyWithImpl<$Res, TelegramReportHead>;
  @useResult
  $Res call(
      {String title,
      String serial,
      String eventId,
      String headline,
      String infoKind,
      String infoType,
      String reportDateTime,
      String targetDateTime,
      String infoKindVersion});
}

/// @nodoc
class _$TelegramReportHeadCopyWithImpl<$Res, $Val extends TelegramReportHead>
    implements $TelegramReportHeadCopyWith<$Res> {
  _$TelegramReportHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramReportHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? serial = null,
    Object? eventId = null,
    Object? headline = null,
    Object? infoKind = null,
    Object? infoType = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? infoKindVersion = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      infoKind: null == infoKind
          ? _value.infoKind
          : infoKind // ignore: cast_nullable_to_non_nullable
              as String,
      infoType: null == infoType
          ? _value.infoType
          : infoType // ignore: cast_nullable_to_non_nullable
              as String,
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      infoKindVersion: null == infoKindVersion
          ? _value.infoKindVersion
          : infoKindVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TelegramReportHeadImplCopyWith<$Res>
    implements $TelegramReportHeadCopyWith<$Res> {
  factory _$$TelegramReportHeadImplCopyWith(_$TelegramReportHeadImpl value,
          $Res Function(_$TelegramReportHeadImpl) then) =
      __$$TelegramReportHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String serial,
      String eventId,
      String headline,
      String infoKind,
      String infoType,
      String reportDateTime,
      String targetDateTime,
      String infoKindVersion});
}

/// @nodoc
class __$$TelegramReportHeadImplCopyWithImpl<$Res>
    extends _$TelegramReportHeadCopyWithImpl<$Res, _$TelegramReportHeadImpl>
    implements _$$TelegramReportHeadImplCopyWith<$Res> {
  __$$TelegramReportHeadImplCopyWithImpl(_$TelegramReportHeadImpl _value,
      $Res Function(_$TelegramReportHeadImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramReportHead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? serial = null,
    Object? eventId = null,
    Object? headline = null,
    Object? infoKind = null,
    Object? infoType = null,
    Object? reportDateTime = null,
    Object? targetDateTime = null,
    Object? infoKindVersion = null,
  }) {
    return _then(_$TelegramReportHeadImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      infoKind: null == infoKind
          ? _value.infoKind
          : infoKind // ignore: cast_nullable_to_non_nullable
              as String,
      infoType: null == infoType
          ? _value.infoType
          : infoType // ignore: cast_nullable_to_non_nullable
              as String,
      reportDateTime: null == reportDateTime
          ? _value.reportDateTime
          : reportDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      targetDateTime: null == targetDateTime
          ? _value.targetDateTime
          : targetDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      infoKindVersion: null == infoKindVersion
          ? _value.infoKindVersion
          : infoKindVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelegramReportHeadImpl implements _TelegramReportHead {
  const _$TelegramReportHeadImpl(
      {required this.title,
      required this.serial,
      required this.eventId,
      required this.headline,
      required this.infoKind,
      required this.infoType,
      required this.reportDateTime,
      required this.targetDateTime,
      required this.infoKindVersion});

  factory _$TelegramReportHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramReportHeadImplFromJson(json);

  @override
  final String title;
  @override
  final String serial;
  @override
  final String eventId;
  @override
  final String headline;
  @override
  final String infoKind;
  @override
  final String infoType;
  @override
  final String reportDateTime;
  @override
  final String targetDateTime;
  @override
  final String infoKindVersion;

  @override
  String toString() {
    return 'TelegramReportHead(title: $title, serial: $serial, eventId: $eventId, headline: $headline, infoKind: $infoKind, infoType: $infoType, reportDateTime: $reportDateTime, targetDateTime: $targetDateTime, infoKindVersion: $infoKindVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramReportHeadImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.infoKind, infoKind) ||
                other.infoKind == infoKind) &&
            (identical(other.infoType, infoType) ||
                other.infoType == infoType) &&
            (identical(other.reportDateTime, reportDateTime) ||
                other.reportDateTime == reportDateTime) &&
            (identical(other.targetDateTime, targetDateTime) ||
                other.targetDateTime == targetDateTime) &&
            (identical(other.infoKindVersion, infoKindVersion) ||
                other.infoKindVersion == infoKindVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, serial, eventId, headline,
      infoKind, infoType, reportDateTime, targetDateTime, infoKindVersion);

  /// Create a copy of TelegramReportHead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramReportHeadImplCopyWith<_$TelegramReportHeadImpl> get copyWith =>
      __$$TelegramReportHeadImplCopyWithImpl<_$TelegramReportHeadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramReportHeadImplToJson(
      this,
    );
  }
}

abstract class _TelegramReportHead implements TelegramReportHead {
  const factory _TelegramReportHead(
      {required final String title,
      required final String serial,
      required final String eventId,
      required final String headline,
      required final String infoKind,
      required final String infoType,
      required final String reportDateTime,
      required final String targetDateTime,
      required final String infoKindVersion}) = _$TelegramReportHeadImpl;

  factory _TelegramReportHead.fromJson(Map<String, dynamic> json) =
      _$TelegramReportHeadImpl.fromJson;

  @override
  String get title;
  @override
  String get serial;
  @override
  String get eventId;
  @override
  String get headline;
  @override
  String get infoKind;
  @override
  String get infoType;
  @override
  String get reportDateTime;
  @override
  String get targetDateTime;
  @override
  String get infoKindVersion;

  /// Create a copy of TelegramReportHead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramReportHeadImplCopyWith<_$TelegramReportHeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelegramReportControl _$TelegramReportControlFromJson(
    Map<String, dynamic> json) {
  return _TelegramReportControl.fromJson(json);
}

/// @nodoc
mixin _$TelegramReportControl {
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  String get editorialOffice => throw _privateConstructorUsedError;
  String get publishingOffice => throw _privateConstructorUsedError;

  /// Serializes this TelegramReportControl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramReportControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramReportControlCopyWith<TelegramReportControl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramReportControlCopyWith<$Res> {
  factory $TelegramReportControlCopyWith(TelegramReportControl value,
          $Res Function(TelegramReportControl) then) =
      _$TelegramReportControlCopyWithImpl<$Res, TelegramReportControl>;
  @useResult
  $Res call(
      {String title,
      String status,
      String dateTime,
      String editorialOffice,
      String publishingOffice});
}

/// @nodoc
class _$TelegramReportControlCopyWithImpl<$Res,
        $Val extends TelegramReportControl>
    implements $TelegramReportControlCopyWith<$Res> {
  _$TelegramReportControlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramReportControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? dateTime = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
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
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TelegramReportControlImplCopyWith<$Res>
    implements $TelegramReportControlCopyWith<$Res> {
  factory _$$TelegramReportControlImplCopyWith(
          _$TelegramReportControlImpl value,
          $Res Function(_$TelegramReportControlImpl) then) =
      __$$TelegramReportControlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String status,
      String dateTime,
      String editorialOffice,
      String publishingOffice});
}

/// @nodoc
class __$$TelegramReportControlImplCopyWithImpl<$Res>
    extends _$TelegramReportControlCopyWithImpl<$Res,
        _$TelegramReportControlImpl>
    implements _$$TelegramReportControlImplCopyWith<$Res> {
  __$$TelegramReportControlImplCopyWithImpl(_$TelegramReportControlImpl _value,
      $Res Function(_$TelegramReportControlImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramReportControl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? dateTime = null,
    Object? editorialOffice = null,
    Object? publishingOffice = null,
  }) {
    return _then(_$TelegramReportControlImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
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
class _$TelegramReportControlImpl implements _TelegramReportControl {
  const _$TelegramReportControlImpl(
      {required this.title,
      required this.status,
      required this.dateTime,
      required this.editorialOffice,
      required this.publishingOffice});

  factory _$TelegramReportControlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramReportControlImplFromJson(json);

  @override
  final String title;
  @override
  final String status;
  @override
  final String dateTime;
  @override
  final String editorialOffice;
  @override
  final String publishingOffice;

  @override
  String toString() {
    return 'TelegramReportControl(title: $title, status: $status, dateTime: $dateTime, editorialOffice: $editorialOffice, publishingOffice: $publishingOffice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramReportControlImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.editorialOffice, editorialOffice) ||
                other.editorialOffice == editorialOffice) &&
            (identical(other.publishingOffice, publishingOffice) ||
                other.publishingOffice == publishingOffice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, status, dateTime, editorialOffice, publishingOffice);

  /// Create a copy of TelegramReportControl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramReportControlImplCopyWith<_$TelegramReportControlImpl>
      get copyWith => __$$TelegramReportControlImplCopyWithImpl<
          _$TelegramReportControlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramReportControlImplToJson(
      this,
    );
  }
}

abstract class _TelegramReportControl implements TelegramReportControl {
  const factory _TelegramReportControl(
      {required final String title,
      required final String status,
      required final String dateTime,
      required final String editorialOffice,
      required final String publishingOffice}) = _$TelegramReportControlImpl;

  factory _TelegramReportControl.fromJson(Map<String, dynamic> json) =
      _$TelegramReportControlImpl.fromJson;

  @override
  String get title;
  @override
  String get status;
  @override
  String get dateTime;
  @override
  String get editorialOffice;
  @override
  String get publishingOffice;

  /// Create a copy of TelegramReportControl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramReportControlImplCopyWith<_$TelegramReportControlImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TelegramSchema _$TelegramSchemaFromJson(Map<String, dynamic> json) {
  return _TelegramSchema.fromJson(json);
}

/// @nodoc
mixin _$TelegramSchema {
  String get type => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this TelegramSchema to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TelegramSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TelegramSchemaCopyWith<TelegramSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelegramSchemaCopyWith<$Res> {
  factory $TelegramSchemaCopyWith(
          TelegramSchema value, $Res Function(TelegramSchema) then) =
      _$TelegramSchemaCopyWithImpl<$Res, TelegramSchema>;
  @useResult
  $Res call({String type, String version});
}

/// @nodoc
class _$TelegramSchemaCopyWithImpl<$Res, $Val extends TelegramSchema>
    implements $TelegramSchemaCopyWith<$Res> {
  _$TelegramSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TelegramSchema
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
abstract class _$$TelegramSchemaImplCopyWith<$Res>
    implements $TelegramSchemaCopyWith<$Res> {
  factory _$$TelegramSchemaImplCopyWith(_$TelegramSchemaImpl value,
          $Res Function(_$TelegramSchemaImpl) then) =
      __$$TelegramSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String version});
}

/// @nodoc
class __$$TelegramSchemaImplCopyWithImpl<$Res>
    extends _$TelegramSchemaCopyWithImpl<$Res, _$TelegramSchemaImpl>
    implements _$$TelegramSchemaImplCopyWith<$Res> {
  __$$TelegramSchemaImplCopyWithImpl(
      _$TelegramSchemaImpl _value, $Res Function(_$TelegramSchemaImpl) _then)
      : super(_value, _then);

  /// Create a copy of TelegramSchema
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_$TelegramSchemaImpl(
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
class _$TelegramSchemaImpl implements _TelegramSchema {
  const _$TelegramSchemaImpl({required this.type, required this.version});

  factory _$TelegramSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelegramSchemaImplFromJson(json);

  @override
  final String type;
  @override
  final String version;

  @override
  String toString() {
    return 'TelegramSchema(type: $type, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelegramSchemaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, version);

  /// Create a copy of TelegramSchema
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TelegramSchemaImplCopyWith<_$TelegramSchemaImpl> get copyWith =>
      __$$TelegramSchemaImplCopyWithImpl<_$TelegramSchemaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelegramSchemaImplToJson(
      this,
    );
  }
}

abstract class _TelegramSchema implements TelegramSchema {
  const factory _TelegramSchema(
      {required final String type,
      required final String version}) = _$TelegramSchemaImpl;

  factory _TelegramSchema.fromJson(Map<String, dynamic> json) =
      _$TelegramSchemaImpl.fromJson;

  @override
  String get type;
  @override
  String get version;

  /// Create a copy of TelegramSchema
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TelegramSchemaImplCopyWith<_$TelegramSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
