// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jma_forecast_lg_intensity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JmaForecastLgIntensity _$JmaForecastLgIntensityFromJson(
    Map<String, dynamic> json) {
  return _JmaForecastLgIntensity.fromJson(json);
}

/// @nodoc
mixin _$JmaForecastLgIntensity {
  JmaLgIntensity get from => throw _privateConstructorUsedError;
  JmaLgIntensity get to => throw _privateConstructorUsedError;

  /// Serializes this JmaForecastLgIntensity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaForecastLgIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaForecastLgIntensityCopyWith<JmaForecastLgIntensity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaForecastLgIntensityCopyWith<$Res> {
  factory $JmaForecastLgIntensityCopyWith(JmaForecastLgIntensity value,
          $Res Function(JmaForecastLgIntensity) then) =
      _$JmaForecastLgIntensityCopyWithImpl<$Res, JmaForecastLgIntensity>;
  @useResult
  $Res call({JmaLgIntensity from, JmaLgIntensity to});
}

/// @nodoc
class _$JmaForecastLgIntensityCopyWithImpl<$Res,
        $Val extends JmaForecastLgIntensity>
    implements $JmaForecastLgIntensityCopyWith<$Res> {
  _$JmaForecastLgIntensityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaForecastLgIntensity
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
              as JmaLgIntensity,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as JmaLgIntensity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JmaForecastLgIntensityImplCopyWith<$Res>
    implements $JmaForecastLgIntensityCopyWith<$Res> {
  factory _$$JmaForecastLgIntensityImplCopyWith(
          _$JmaForecastLgIntensityImpl value,
          $Res Function(_$JmaForecastLgIntensityImpl) then) =
      __$$JmaForecastLgIntensityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JmaLgIntensity from, JmaLgIntensity to});
}

/// @nodoc
class __$$JmaForecastLgIntensityImplCopyWithImpl<$Res>
    extends _$JmaForecastLgIntensityCopyWithImpl<$Res,
        _$JmaForecastLgIntensityImpl>
    implements _$$JmaForecastLgIntensityImplCopyWith<$Res> {
  __$$JmaForecastLgIntensityImplCopyWithImpl(
      _$JmaForecastLgIntensityImpl _value,
      $Res Function(_$JmaForecastLgIntensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaForecastLgIntensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$JmaForecastLgIntensityImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as JmaLgIntensity,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as JmaLgIntensity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaForecastLgIntensityImpl implements _JmaForecastLgIntensity {
  const _$JmaForecastLgIntensityImpl({required this.from, required this.to});

  factory _$JmaForecastLgIntensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaForecastLgIntensityImplFromJson(json);

  @override
  final JmaLgIntensity from;
  @override
  final JmaLgIntensity to;

  @override
  String toString() {
    return 'JmaForecastLgIntensity(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaForecastLgIntensityImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of JmaForecastLgIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaForecastLgIntensityImplCopyWith<_$JmaForecastLgIntensityImpl>
      get copyWith => __$$JmaForecastLgIntensityImplCopyWithImpl<
          _$JmaForecastLgIntensityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaForecastLgIntensityImplToJson(
      this,
    );
  }
}

abstract class _JmaForecastLgIntensity implements JmaForecastLgIntensity {
  const factory _JmaForecastLgIntensity(
      {required final JmaLgIntensity from,
      required final JmaLgIntensity to}) = _$JmaForecastLgIntensityImpl;

  factory _JmaForecastLgIntensity.fromJson(Map<String, dynamic> json) =
      _$JmaForecastLgIntensityImpl.fromJson;

  @override
  JmaLgIntensity get from;
  @override
  JmaLgIntensity get to;

  /// Create a copy of JmaForecastLgIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaForecastLgIntensityImplCopyWith<_$JmaForecastLgIntensityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
