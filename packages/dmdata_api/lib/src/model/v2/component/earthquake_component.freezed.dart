// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeComponent _$EarthquakeComponentFromJson(Map<String, dynamic> json) {
  return _EarthquakeComponent.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeComponent {
  /// 地震発生時刻を分単位で、ISO8601の日本時間で記載する
  String get originTime => throw _privateConstructorUsedError;

  /// 地震検知時刻を分単位で、ISO8601の日本時間で記載する
  String get arrivalTime => throw _privateConstructorUsedError;

  /// 地震の震源要素
  Hypocenter get hypocenter => throw _privateConstructorUsedError;

  /// 地震の規模
  Magnitude get magnitude => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeComponent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeComponentCopyWith<EarthquakeComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeComponentCopyWith<$Res> {
  factory $EarthquakeComponentCopyWith(
          EarthquakeComponent value, $Res Function(EarthquakeComponent) then) =
      _$EarthquakeComponentCopyWithImpl<$Res, EarthquakeComponent>;
  @useResult
  $Res call(
      {String originTime,
      String arrivalTime,
      Hypocenter hypocenter,
      Magnitude magnitude});

  $HypocenterCopyWith<$Res> get hypocenter;
  $MagnitudeCopyWith<$Res> get magnitude;
}

/// @nodoc
class _$EarthquakeComponentCopyWithImpl<$Res, $Val extends EarthquakeComponent>
    implements $EarthquakeComponentCopyWith<$Res> {
  _$EarthquakeComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originTime = null,
    Object? arrivalTime = null,
    Object? hypocenter = null,
    Object? magnitude = null,
  }) {
    return _then(_value.copyWith(
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenter: null == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as Hypocenter,
      magnitude: null == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude,
    ) as $Val);
  }

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HypocenterCopyWith<$Res> get hypocenter {
    return $HypocenterCopyWith<$Res>(_value.hypocenter, (value) {
      return _then(_value.copyWith(hypocenter: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeComponent
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
abstract class _$$EarthquakeComponentImplCopyWith<$Res>
    implements $EarthquakeComponentCopyWith<$Res> {
  factory _$$EarthquakeComponentImplCopyWith(_$EarthquakeComponentImpl value,
          $Res Function(_$EarthquakeComponentImpl) then) =
      __$$EarthquakeComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String originTime,
      String arrivalTime,
      Hypocenter hypocenter,
      Magnitude magnitude});

  @override
  $HypocenterCopyWith<$Res> get hypocenter;
  @override
  $MagnitudeCopyWith<$Res> get magnitude;
}

/// @nodoc
class __$$EarthquakeComponentImplCopyWithImpl<$Res>
    extends _$EarthquakeComponentCopyWithImpl<$Res, _$EarthquakeComponentImpl>
    implements _$$EarthquakeComponentImplCopyWith<$Res> {
  __$$EarthquakeComponentImplCopyWithImpl(_$EarthquakeComponentImpl _value,
      $Res Function(_$EarthquakeComponentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originTime = null,
    Object? arrivalTime = null,
    Object? hypocenter = null,
    Object? magnitude = null,
  }) {
    return _then(_$EarthquakeComponentImpl(
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as String,
      arrivalTime: null == arrivalTime
          ? _value.arrivalTime
          : arrivalTime // ignore: cast_nullable_to_non_nullable
              as String,
      hypocenter: null == hypocenter
          ? _value.hypocenter
          : hypocenter // ignore: cast_nullable_to_non_nullable
              as Hypocenter,
      magnitude: null == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as Magnitude,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeComponentImpl implements _EarthquakeComponent {
  const _$EarthquakeComponentImpl(
      {required this.originTime,
      required this.arrivalTime,
      required this.hypocenter,
      required this.magnitude});

  factory _$EarthquakeComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeComponentImplFromJson(json);

  /// 地震発生時刻を分単位で、ISO8601の日本時間で記載する
  @override
  final String originTime;

  /// 地震検知時刻を分単位で、ISO8601の日本時間で記載する
  @override
  final String arrivalTime;

  /// 地震の震源要素
  @override
  final Hypocenter hypocenter;

  /// 地震の規模
  @override
  final Magnitude magnitude;

  @override
  String toString() {
    return 'EarthquakeComponent(originTime: $originTime, arrivalTime: $arrivalTime, hypocenter: $hypocenter, magnitude: $magnitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeComponentImpl &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
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
      Object.hash(runtimeType, originTime, arrivalTime, hypocenter, magnitude);

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeComponentImplCopyWith<_$EarthquakeComponentImpl> get copyWith =>
      __$$EarthquakeComponentImplCopyWithImpl<_$EarthquakeComponentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeComponentImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeComponent implements EarthquakeComponent {
  const factory _EarthquakeComponent(
      {required final String originTime,
      required final String arrivalTime,
      required final Hypocenter hypocenter,
      required final Magnitude magnitude}) = _$EarthquakeComponentImpl;

  factory _EarthquakeComponent.fromJson(Map<String, dynamic> json) =
      _$EarthquakeComponentImpl.fromJson;

  /// 地震発生時刻を分単位で、ISO8601の日本時間で記載する
  @override
  String get originTime;

  /// 地震検知時刻を分単位で、ISO8601の日本時間で記載する
  @override
  String get arrivalTime;

  /// 地震の震源要素
  @override
  Hypocenter get hypocenter;

  /// 地震の規模
  @override
  Magnitude get magnitude;

  /// Create a copy of EarthquakeComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeComponentImplCopyWith<_$EarthquakeComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hypocenter _$HypocenterFromJson(Map<String, dynamic> json) {
  return _Hypocenter.fromJson(json);
}

/// @nodoc
mixin _$Hypocenter {
  /// 震央地名
  String get name => throw _privateConstructorUsedError;

  /// 震央地名コード
  String get code => throw _privateConstructorUsedError;

  /// 震源地の空間座標
  Coordinate get coordinate => throw _privateConstructorUsedError;

  /// 深さ情報
  Depth get depth => throw _privateConstructorUsedError;

  /// 震源位置の補足情報
  Auxiliary? get auxiliary => throw _privateConstructorUsedError;

  /// Serializes this Hypocenter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HypocenterCopyWith<Hypocenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HypocenterCopyWith<$Res> {
  factory $HypocenterCopyWith(
          Hypocenter value, $Res Function(Hypocenter) then) =
      _$HypocenterCopyWithImpl<$Res, Hypocenter>;
  @useResult
  $Res call(
      {String name,
      String code,
      Coordinate coordinate,
      Depth depth,
      Auxiliary? auxiliary});

  $CoordinateCopyWith<$Res> get coordinate;
  $DepthCopyWith<$Res> get depth;
  $AuxiliaryCopyWith<$Res>? get auxiliary;
}

/// @nodoc
class _$HypocenterCopyWithImpl<$Res, $Val extends Hypocenter>
    implements $HypocenterCopyWith<$Res> {
  _$HypocenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? coordinate = null,
    Object? depth = null,
    Object? auxiliary = freezed,
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
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      auxiliary: freezed == auxiliary
          ? _value.auxiliary
          : auxiliary // ignore: cast_nullable_to_non_nullable
              as Auxiliary?,
    ) as $Val);
  }

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepthCopyWith<$Res> get depth {
    return $DepthCopyWith<$Res>(_value.depth, (value) {
      return _then(_value.copyWith(depth: value) as $Val);
    });
  }

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuxiliaryCopyWith<$Res>? get auxiliary {
    if (_value.auxiliary == null) {
      return null;
    }

    return $AuxiliaryCopyWith<$Res>(_value.auxiliary!, (value) {
      return _then(_value.copyWith(auxiliary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HypocenterImplCopyWith<$Res>
    implements $HypocenterCopyWith<$Res> {
  factory _$$HypocenterImplCopyWith(
          _$HypocenterImpl value, $Res Function(_$HypocenterImpl) then) =
      __$$HypocenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String code,
      Coordinate coordinate,
      Depth depth,
      Auxiliary? auxiliary});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
  @override
  $DepthCopyWith<$Res> get depth;
  @override
  $AuxiliaryCopyWith<$Res>? get auxiliary;
}

/// @nodoc
class __$$HypocenterImplCopyWithImpl<$Res>
    extends _$HypocenterCopyWithImpl<$Res, _$HypocenterImpl>
    implements _$$HypocenterImplCopyWith<$Res> {
  __$$HypocenterImplCopyWithImpl(
      _$HypocenterImpl _value, $Res Function(_$HypocenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? coordinate = null,
    Object? depth = null,
    Object? auxiliary = freezed,
  }) {
    return _then(_$HypocenterImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      auxiliary: freezed == auxiliary
          ? _value.auxiliary
          : auxiliary // ignore: cast_nullable_to_non_nullable
              as Auxiliary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HypocenterImpl implements _Hypocenter {
  const _$HypocenterImpl(
      {required this.name,
      required this.code,
      required this.coordinate,
      required this.depth,
      this.auxiliary});

  factory _$HypocenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$HypocenterImplFromJson(json);

  /// 震央地名
  @override
  final String name;

  /// 震央地名コード
  @override
  final String code;

  /// 震源地の空間座標
  @override
  final Coordinate coordinate;

  /// 深さ情報
  @override
  final Depth depth;

  /// 震源位置の補足情報
  @override
  final Auxiliary? auxiliary;

  @override
  String toString() {
    return 'Hypocenter(name: $name, code: $code, coordinate: $coordinate, depth: $depth, auxiliary: $auxiliary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HypocenterImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.auxiliary, auxiliary) ||
                other.auxiliary == auxiliary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, code, coordinate, depth, auxiliary);

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HypocenterImplCopyWith<_$HypocenterImpl> get copyWith =>
      __$$HypocenterImplCopyWithImpl<_$HypocenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HypocenterImplToJson(
      this,
    );
  }
}

abstract class _Hypocenter implements Hypocenter {
  const factory _Hypocenter(
      {required final String name,
      required final String code,
      required final Coordinate coordinate,
      required final Depth depth,
      final Auxiliary? auxiliary}) = _$HypocenterImpl;

  factory _Hypocenter.fromJson(Map<String, dynamic> json) =
      _$HypocenterImpl.fromJson;

  /// 震央地名
  @override
  String get name;

  /// 震央地名コード
  @override
  String get code;

  /// 震源地の空間座標
  @override
  Coordinate get coordinate;

  /// 深さ情報
  @override
  Depth get depth;

  /// 震源位置の補足情報
  @override
  Auxiliary? get auxiliary;

  /// Create a copy of Hypocenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HypocenterImplCopyWith<_$HypocenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return _Coordinate.fromJson(json);
}

/// @nodoc
mixin _$Coordinate {
  /// 緯度要素
  CoordinateValue get latitude => throw _privateConstructorUsedError;

  /// 経度要素
  CoordinateValue get longitude => throw _privateConstructorUsedError;

  /// 高さ要素
  Height get height => throw _privateConstructorUsedError;

  /// 測地系
  String get geodeticSystem => throw _privateConstructorUsedError;

  /// Serializes this Coordinate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res, Coordinate>;
  @useResult
  $Res call(
      {CoordinateValue latitude,
      CoordinateValue longitude,
      Height height,
      String geodeticSystem});

  $CoordinateValueCopyWith<$Res> get latitude;
  $CoordinateValueCopyWith<$Res> get longitude;
  $HeightCopyWith<$Res> get height;
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res, $Val extends Coordinate>
    implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? height = null,
    Object? geodeticSystem = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as CoordinateValue,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as CoordinateValue,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      geodeticSystem: null == geodeticSystem
          ? _value.geodeticSystem
          : geodeticSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateValueCopyWith<$Res> get latitude {
    return $CoordinateValueCopyWith<$Res>(_value.latitude, (value) {
      return _then(_value.copyWith(latitude: value) as $Val);
    });
  }

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateValueCopyWith<$Res> get longitude {
    return $CoordinateValueCopyWith<$Res>(_value.longitude, (value) {
      return _then(_value.copyWith(longitude: value) as $Val);
    });
  }

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCopyWith<$Res> get height {
    return $HeightCopyWith<$Res>(_value.height, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoordinateImplCopyWith<$Res>
    implements $CoordinateCopyWith<$Res> {
  factory _$$CoordinateImplCopyWith(
          _$CoordinateImpl value, $Res Function(_$CoordinateImpl) then) =
      __$$CoordinateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CoordinateValue latitude,
      CoordinateValue longitude,
      Height height,
      String geodeticSystem});

  @override
  $CoordinateValueCopyWith<$Res> get latitude;
  @override
  $CoordinateValueCopyWith<$Res> get longitude;
  @override
  $HeightCopyWith<$Res> get height;
}

/// @nodoc
class __$$CoordinateImplCopyWithImpl<$Res>
    extends _$CoordinateCopyWithImpl<$Res, _$CoordinateImpl>
    implements _$$CoordinateImplCopyWith<$Res> {
  __$$CoordinateImplCopyWithImpl(
      _$CoordinateImpl _value, $Res Function(_$CoordinateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? height = null,
    Object? geodeticSystem = null,
  }) {
    return _then(_$CoordinateImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as CoordinateValue,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as CoordinateValue,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      geodeticSystem: null == geodeticSystem
          ? _value.geodeticSystem
          : geodeticSystem // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinateImpl implements _Coordinate {
  const _$CoordinateImpl(
      {required this.latitude,
      required this.longitude,
      required this.height,
      required this.geodeticSystem});

  factory _$CoordinateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinateImplFromJson(json);

  /// 緯度要素
  @override
  final CoordinateValue latitude;

  /// 経度要素
  @override
  final CoordinateValue longitude;

  /// 高さ要素
  @override
  final Height height;

  /// 測地系
  @override
  final String geodeticSystem;

  @override
  String toString() {
    return 'Coordinate(latitude: $latitude, longitude: $longitude, height: $height, geodeticSystem: $geodeticSystem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.geodeticSystem, geodeticSystem) ||
                other.geodeticSystem == geodeticSystem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, height, geodeticSystem);

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateImplCopyWith<_$CoordinateImpl> get copyWith =>
      __$$CoordinateImplCopyWithImpl<_$CoordinateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinateImplToJson(
      this,
    );
  }
}

abstract class _Coordinate implements Coordinate {
  const factory _Coordinate(
      {required final CoordinateValue latitude,
      required final CoordinateValue longitude,
      required final Height height,
      required final String geodeticSystem}) = _$CoordinateImpl;

  factory _Coordinate.fromJson(Map<String, dynamic> json) =
      _$CoordinateImpl.fromJson;

  /// 緯度要素
  @override
  CoordinateValue get latitude;

  /// 経度要素
  @override
  CoordinateValue get longitude;

  /// 高さ要素
  @override
  Height get height;

  /// 測地系
  @override
  String get geodeticSystem;

  /// Create a copy of Coordinate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinateImplCopyWith<_$CoordinateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoordinateValue _$CoordinateValueFromJson(Map<String, dynamic> json) {
  return _CoordinateValue.fromJson(json);
}

/// @nodoc
mixin _$CoordinateValue {
  /// 表記
  String get text => throw _privateConstructorUsedError;

  /// 数値
  String get value => throw _privateConstructorUsedError;

  /// Serializes this CoordinateValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoordinateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinateValueCopyWith<CoordinateValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateValueCopyWith<$Res> {
  factory $CoordinateValueCopyWith(
          CoordinateValue value, $Res Function(CoordinateValue) then) =
      _$CoordinateValueCopyWithImpl<$Res, CoordinateValue>;
  @useResult
  $Res call({String text, String value});
}

/// @nodoc
class _$CoordinateValueCopyWithImpl<$Res, $Val extends CoordinateValue>
    implements $CoordinateValueCopyWith<$Res> {
  _$CoordinateValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinateValueImplCopyWith<$Res>
    implements $CoordinateValueCopyWith<$Res> {
  factory _$$CoordinateValueImplCopyWith(_$CoordinateValueImpl value,
          $Res Function(_$CoordinateValueImpl) then) =
      __$$CoordinateValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String value});
}

/// @nodoc
class __$$CoordinateValueImplCopyWithImpl<$Res>
    extends _$CoordinateValueCopyWithImpl<$Res, _$CoordinateValueImpl>
    implements _$$CoordinateValueImplCopyWith<$Res> {
  __$$CoordinateValueImplCopyWithImpl(
      _$CoordinateValueImpl _value, $Res Function(_$CoordinateValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoordinateValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? value = null,
  }) {
    return _then(_$CoordinateValueImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinateValueImpl implements _CoordinateValue {
  const _$CoordinateValueImpl({required this.text, required this.value});

  factory _$CoordinateValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinateValueImplFromJson(json);

  /// 表記
  @override
  final String text;

  /// 数値
  @override
  final String value;

  @override
  String toString() {
    return 'CoordinateValue(text: $text, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateValueImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  /// Create a copy of CoordinateValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateValueImplCopyWith<_$CoordinateValueImpl> get copyWith =>
      __$$CoordinateValueImplCopyWithImpl<_$CoordinateValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinateValueImplToJson(
      this,
    );
  }
}

abstract class _CoordinateValue implements CoordinateValue {
  const factory _CoordinateValue(
      {required final String text,
      required final String value}) = _$CoordinateValueImpl;

  factory _CoordinateValue.fromJson(Map<String, dynamic> json) =
      _$CoordinateValueImpl.fromJson;

  /// 表記
  @override
  String get text;

  /// 数値
  @override
  String get value;

  /// Create a copy of CoordinateValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinateValueImplCopyWith<_$CoordinateValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Height _$HeightFromJson(Map<String, dynamic> json) {
  return _Height.fromJson(json);
}

/// @nodoc
mixin _$Height {
  /// 種類
  String get type => throw _privateConstructorUsedError;

  /// 単位
  String get unit => throw _privateConstructorUsedError;

  /// 数値
  String get value => throw _privateConstructorUsedError;

  /// Serializes this Height to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeightCopyWith<Height> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<$Res> {
  factory $HeightCopyWith(Height value, $Res Function(Height) then) =
      _$HeightCopyWithImpl<$Res, Height>;
  @useResult
  $Res call({String type, String unit, String value});
}

/// @nodoc
class _$HeightCopyWithImpl<$Res, $Val extends Height>
    implements $HeightCopyWith<$Res> {
  _$HeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeightImplCopyWith<$Res> implements $HeightCopyWith<$Res> {
  factory _$$HeightImplCopyWith(
          _$HeightImpl value, $Res Function(_$HeightImpl) then) =
      __$$HeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String unit, String value});
}

/// @nodoc
class __$$HeightImplCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$HeightImpl>
    implements _$$HeightImplCopyWith<$Res> {
  __$$HeightImplCopyWithImpl(
      _$HeightImpl _value, $Res Function(_$HeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_$HeightImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeightImpl implements _Height {
  const _$HeightImpl(
      {required this.type, required this.unit, required this.value});

  factory _$HeightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeightImplFromJson(json);

  /// 種類
  @override
  final String type;

  /// 単位
  @override
  final String unit;

  /// 数値
  @override
  final String value;

  @override
  String toString() {
    return 'Height(type: $type, unit: $unit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, unit, value);

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      __$$HeightImplCopyWithImpl<_$HeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeightImplToJson(
      this,
    );
  }
}

abstract class _Height implements Height {
  const factory _Height(
      {required final String type,
      required final String unit,
      required final String value}) = _$HeightImpl;

  factory _Height.fromJson(Map<String, dynamic> json) = _$HeightImpl.fromJson;

  /// 種類
  @override
  String get type;

  /// 単位
  @override
  String get unit;

  /// 数値
  @override
  String get value;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Depth _$DepthFromJson(Map<String, dynamic> json) {
  return _Depth.fromJson(json);
}

/// @nodoc
mixin _$Depth {
  /// 種類
  String get type => throw _privateConstructorUsedError;

  /// 単位
  String get unit => throw _privateConstructorUsedError;

  /// 数値
  String get value => throw _privateConstructorUsedError;

  /// 例外的な表現をする場合の文字列
  String? get condition => throw _privateConstructorUsedError;

  /// Serializes this Depth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Depth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepthCopyWith<Depth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepthCopyWith<$Res> {
  factory $DepthCopyWith(Depth value, $Res Function(Depth) then) =
      _$DepthCopyWithImpl<$Res, Depth>;
  @useResult
  $Res call({String type, String unit, String value, String? condition});
}

/// @nodoc
class _$DepthCopyWithImpl<$Res, $Val extends Depth>
    implements $DepthCopyWith<$Res> {
  _$DepthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Depth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = null,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepthImplCopyWith<$Res> implements $DepthCopyWith<$Res> {
  factory _$$DepthImplCopyWith(
          _$DepthImpl value, $Res Function(_$DepthImpl) then) =
      __$$DepthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String unit, String value, String? condition});
}

/// @nodoc
class __$$DepthImplCopyWithImpl<$Res>
    extends _$DepthCopyWithImpl<$Res, _$DepthImpl>
    implements _$$DepthImplCopyWith<$Res> {
  __$$DepthImplCopyWithImpl(
      _$DepthImpl _value, $Res Function(_$DepthImpl) _then)
      : super(_value, _then);

  /// Create a copy of Depth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = null,
    Object? condition = freezed,
  }) {
    return _then(_$DepthImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepthImpl implements _Depth {
  const _$DepthImpl(
      {required this.type,
      required this.unit,
      required this.value,
      this.condition});

  factory _$DepthImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepthImplFromJson(json);

  /// 種類
  @override
  final String type;

  /// 単位
  @override
  final String unit;

  /// 数値
  @override
  final String value;

  /// 例外的な表現をする場合の文字列
  @override
  final String? condition;

  @override
  String toString() {
    return 'Depth(type: $type, unit: $unit, value: $value, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepthImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, unit, value, condition);

  /// Create a copy of Depth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepthImplCopyWith<_$DepthImpl> get copyWith =>
      __$$DepthImplCopyWithImpl<_$DepthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepthImplToJson(
      this,
    );
  }
}

abstract class _Depth implements Depth {
  const factory _Depth(
      {required final String type,
      required final String unit,
      required final String value,
      final String? condition}) = _$DepthImpl;

  factory _Depth.fromJson(Map<String, dynamic> json) = _$DepthImpl.fromJson;

  /// 種類
  @override
  String get type;

  /// 単位
  @override
  String get unit;

  /// 数値
  @override
  String get value;

  /// 例外的な表現をする場合の文字列
  @override
  String? get condition;

  /// Create a copy of Depth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepthImplCopyWith<_$DepthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Auxiliary _$AuxiliaryFromJson(Map<String, dynamic> json) {
  return _Auxiliary.fromJson(json);
}

/// @nodoc
mixin _$Auxiliary {
  /// 震源位置の捕捉位置を記載
  String get text => throw _privateConstructorUsedError;

  /// 震源位置の捕捉位置を表現する代表地域コード
  String get code => throw _privateConstructorUsedError;

  /// 震源位置の捕捉位置を表現する代表地域名
  String get name => throw _privateConstructorUsedError;

  /// 代表地域から震源への方角を16方位で表現
  String get direction => throw _privateConstructorUsedError;

  /// 代表地域と震源の距離情報
  Distance get distance => throw _privateConstructorUsedError;

  /// Serializes this Auxiliary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuxiliaryCopyWith<Auxiliary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuxiliaryCopyWith<$Res> {
  factory $AuxiliaryCopyWith(Auxiliary value, $Res Function(Auxiliary) then) =
      _$AuxiliaryCopyWithImpl<$Res, Auxiliary>;
  @useResult
  $Res call(
      {String text,
      String code,
      String name,
      String direction,
      Distance distance});

  $DistanceCopyWith<$Res> get distance;
}

/// @nodoc
class _$AuxiliaryCopyWithImpl<$Res, $Val extends Auxiliary>
    implements $AuxiliaryCopyWith<$Res> {
  _$AuxiliaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = null,
    Object? name = null,
    Object? direction = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance,
    ) as $Val);
  }

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DistanceCopyWith<$Res> get distance {
    return $DistanceCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuxiliaryImplCopyWith<$Res>
    implements $AuxiliaryCopyWith<$Res> {
  factory _$$AuxiliaryImplCopyWith(
          _$AuxiliaryImpl value, $Res Function(_$AuxiliaryImpl) then) =
      __$$AuxiliaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String code,
      String name,
      String direction,
      Distance distance});

  @override
  $DistanceCopyWith<$Res> get distance;
}

/// @nodoc
class __$$AuxiliaryImplCopyWithImpl<$Res>
    extends _$AuxiliaryCopyWithImpl<$Res, _$AuxiliaryImpl>
    implements _$$AuxiliaryImplCopyWith<$Res> {
  __$$AuxiliaryImplCopyWithImpl(
      _$AuxiliaryImpl _value, $Res Function(_$AuxiliaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = null,
    Object? name = null,
    Object? direction = null,
    Object? distance = null,
  }) {
    return _then(_$AuxiliaryImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuxiliaryImpl implements _Auxiliary {
  const _$AuxiliaryImpl(
      {required this.text,
      required this.code,
      required this.name,
      required this.direction,
      required this.distance});

  factory _$AuxiliaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuxiliaryImplFromJson(json);

  /// 震源位置の捕捉位置を記載
  @override
  final String text;

  /// 震源位置の捕捉位置を表現する代表地域コード
  @override
  final String code;

  /// 震源位置の捕捉位置を表現する代表地域名
  @override
  final String name;

  /// 代表地域から震源への方角を16方位で表現
  @override
  final String direction;

  /// 代表地域と震源の距離情報
  @override
  final Distance distance;

  @override
  String toString() {
    return 'Auxiliary(text: $text, code: $code, name: $name, direction: $direction, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuxiliaryImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, code, name, direction, distance);

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuxiliaryImplCopyWith<_$AuxiliaryImpl> get copyWith =>
      __$$AuxiliaryImplCopyWithImpl<_$AuxiliaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuxiliaryImplToJson(
      this,
    );
  }
}

abstract class _Auxiliary implements Auxiliary {
  const factory _Auxiliary(
      {required final String text,
      required final String code,
      required final String name,
      required final String direction,
      required final Distance distance}) = _$AuxiliaryImpl;

  factory _Auxiliary.fromJson(Map<String, dynamic> json) =
      _$AuxiliaryImpl.fromJson;

  /// 震源位置の捕捉位置を記載
  @override
  String get text;

  /// 震源位置の捕捉位置を表現する代表地域コード
  @override
  String get code;

  /// 震源位置の捕捉位置を表現する代表地域名
  @override
  String get name;

  /// 代表地域から震源への方角を16方位で表現
  @override
  String get direction;

  /// 代表地域と震源の距離情報
  @override
  Distance get distance;

  /// Create a copy of Auxiliary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuxiliaryImplCopyWith<_$AuxiliaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Distance _$DistanceFromJson(Map<String, dynamic> json) {
  return _Distance.fromJson(json);
}

/// @nodoc
mixin _$Distance {
  /// 距離情報の単位
  String get unit => throw _privateConstructorUsedError;

  /// 代表地域と震源の距離
  String get value => throw _privateConstructorUsedError;

  /// Serializes this Distance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistanceCopyWith<Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res, Distance>;
  @useResult
  $Res call({String unit, String value});
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res, $Val extends Distance>
    implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistanceImplCopyWith<$Res>
    implements $DistanceCopyWith<$Res> {
  factory _$$DistanceImplCopyWith(
          _$DistanceImpl value, $Res Function(_$DistanceImpl) then) =
      __$$DistanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String unit, String value});
}

/// @nodoc
class __$$DistanceImplCopyWithImpl<$Res>
    extends _$DistanceCopyWithImpl<$Res, _$DistanceImpl>
    implements _$$DistanceImplCopyWith<$Res> {
  __$$DistanceImplCopyWithImpl(
      _$DistanceImpl _value, $Res Function(_$DistanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_$DistanceImpl(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceImpl implements _Distance {
  const _$DistanceImpl({required this.unit, required this.value});

  factory _$DistanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceImplFromJson(json);

  /// 距離情報の単位
  @override
  final String unit;

  /// 代表地域と震源の距離
  @override
  final String value;

  @override
  String toString() {
    return 'Distance(unit: $unit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceImpl &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unit, value);

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      __$$DistanceImplCopyWithImpl<_$DistanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceImplToJson(
      this,
    );
  }
}

abstract class _Distance implements Distance {
  const factory _Distance(
      {required final String unit,
      required final String value}) = _$DistanceImpl;

  factory _Distance.fromJson(Map<String, dynamic> json) =
      _$DistanceImpl.fromJson;

  /// 距離情報の単位
  @override
  String get unit;

  /// 代表地域と震源の距離
  @override
  String get value;

  /// Create a copy of Distance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Magnitude _$MagnitudeFromJson(Map<String, dynamic> json) {
  return _Magnitude.fromJson(json);
}

/// @nodoc
mixin _$Magnitude {
  /// マグニチュードの種類
  String get type => throw _privateConstructorUsedError;

  /// マグニチュードの種別
  String get unit => throw _privateConstructorUsedError;

  /// マグニチュードの数値
  String? get value => throw _privateConstructorUsedError;

  /// マグニチュードの数値が求まらない事項を記載
  String? get condition => throw _privateConstructorUsedError;

  /// Serializes this Magnitude to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Magnitude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MagnitudeCopyWith<Magnitude> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagnitudeCopyWith<$Res> {
  factory $MagnitudeCopyWith(Magnitude value, $Res Function(Magnitude) then) =
      _$MagnitudeCopyWithImpl<$Res, Magnitude>;
  @useResult
  $Res call({String type, String unit, String? value, String? condition});
}

/// @nodoc
class _$MagnitudeCopyWithImpl<$Res, $Val extends Magnitude>
    implements $MagnitudeCopyWith<$Res> {
  _$MagnitudeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Magnitude
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MagnitudeImplCopyWith<$Res>
    implements $MagnitudeCopyWith<$Res> {
  factory _$$MagnitudeImplCopyWith(
          _$MagnitudeImpl value, $Res Function(_$MagnitudeImpl) then) =
      __$$MagnitudeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String unit, String? value, String? condition});
}

/// @nodoc
class __$$MagnitudeImplCopyWithImpl<$Res>
    extends _$MagnitudeCopyWithImpl<$Res, _$MagnitudeImpl>
    implements _$$MagnitudeImplCopyWith<$Res> {
  __$$MagnitudeImplCopyWithImpl(
      _$MagnitudeImpl _value, $Res Function(_$MagnitudeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Magnitude
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? unit = null,
    Object? value = freezed,
    Object? condition = freezed,
  }) {
    return _then(_$MagnitudeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MagnitudeImpl implements _Magnitude {
  const _$MagnitudeImpl(
      {required this.type, required this.unit, this.value, this.condition});

  factory _$MagnitudeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MagnitudeImplFromJson(json);

  /// マグニチュードの種類
  @override
  final String type;

  /// マグニチュードの種別
  @override
  final String unit;

  /// マグニチュードの数値
  @override
  final String? value;

  /// マグニチュードの数値が求まらない事項を記載
  @override
  final String? condition;

  @override
  String toString() {
    return 'Magnitude(type: $type, unit: $unit, value: $value, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MagnitudeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, unit, value, condition);

  /// Create a copy of Magnitude
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MagnitudeImplCopyWith<_$MagnitudeImpl> get copyWith =>
      __$$MagnitudeImplCopyWithImpl<_$MagnitudeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MagnitudeImplToJson(
      this,
    );
  }
}

abstract class _Magnitude implements Magnitude {
  const factory _Magnitude(
      {required final String type,
      required final String unit,
      final String? value,
      final String? condition}) = _$MagnitudeImpl;

  factory _Magnitude.fromJson(Map<String, dynamic> json) =
      _$MagnitudeImpl.fromJson;

  /// マグニチュードの種類
  @override
  String get type;

  /// マグニチュードの種別
  @override
  String get unit;

  /// マグニチュードの数値
  @override
  String? get value;

  /// マグニチュードの数値が求まらない事項を記載
  @override
  String? get condition;

  /// Create a copy of Magnitude
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MagnitudeImplCopyWith<_$MagnitudeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
