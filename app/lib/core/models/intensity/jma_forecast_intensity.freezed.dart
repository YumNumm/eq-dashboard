// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jma_forecast_intensity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JmaForecastIntensity _$JmaForecastIntensityFromJson(Map<String, dynamic> json) {
  return _JmaForecastIntensity.fromJson(json);
}

/// @nodoc
mixin _$JmaForecastIntensity {
  JmaIntensity get from => throw _privateConstructorUsedError;
  JmaIntensity get to => throw _privateConstructorUsedError;

  /// Serializes this JmaForecastIntensity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JmaForecastIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JmaForecastIntensityCopyWith<JmaForecastIntensity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JmaForecastIntensityCopyWith<$Res> {
  factory $JmaForecastIntensityCopyWith(JmaForecastIntensity value,
          $Res Function(JmaForecastIntensity) then) =
      _$JmaForecastIntensityCopyWithImpl<$Res, JmaForecastIntensity>;
  @useResult
  $Res call({JmaIntensity from, JmaIntensity to});
}

/// @nodoc
class _$JmaForecastIntensityCopyWithImpl<$Res,
        $Val extends JmaForecastIntensity>
    implements $JmaForecastIntensityCopyWith<$Res> {
  _$JmaForecastIntensityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JmaForecastIntensity
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
              as JmaIntensity,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as JmaIntensity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JmaForecastIntensityImplCopyWith<$Res>
    implements $JmaForecastIntensityCopyWith<$Res> {
  factory _$$JmaForecastIntensityImplCopyWith(_$JmaForecastIntensityImpl value,
          $Res Function(_$JmaForecastIntensityImpl) then) =
      __$$JmaForecastIntensityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({JmaIntensity from, JmaIntensity to});
}

/// @nodoc
class __$$JmaForecastIntensityImplCopyWithImpl<$Res>
    extends _$JmaForecastIntensityCopyWithImpl<$Res, _$JmaForecastIntensityImpl>
    implements _$$JmaForecastIntensityImplCopyWith<$Res> {
  __$$JmaForecastIntensityImplCopyWithImpl(_$JmaForecastIntensityImpl _value,
      $Res Function(_$JmaForecastIntensityImpl) _then)
      : super(_value, _then);

  /// Create a copy of JmaForecastIntensity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$JmaForecastIntensityImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as JmaIntensity,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as JmaIntensity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JmaForecastIntensityImpl implements _JmaForecastIntensity {
  const _$JmaForecastIntensityImpl({required this.from, required this.to});

  factory _$JmaForecastIntensityImpl.fromJson(Map<String, dynamic> json) =>
      _$$JmaForecastIntensityImplFromJson(json);

  @override
  final JmaIntensity from;
  @override
  final JmaIntensity to;

  @override
  String toString() {
    return 'JmaForecastIntensity(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JmaForecastIntensityImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of JmaForecastIntensity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JmaForecastIntensityImplCopyWith<_$JmaForecastIntensityImpl>
      get copyWith =>
          __$$JmaForecastIntensityImplCopyWithImpl<_$JmaForecastIntensityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JmaForecastIntensityImplToJson(
      this,
    );
  }
}

abstract class _JmaForecastIntensity implements JmaForecastIntensity {
  const factory _JmaForecastIntensity(
      {required final JmaIntensity from,
      required final JmaIntensity to}) = _$JmaForecastIntensityImpl;

  factory _JmaForecastIntensity.fromJson(Map<String, dynamic> json) =
      _$JmaForecastIntensityImpl.fromJson;

  @override
  JmaIntensity get from;
  @override
  JmaIntensity get to;

  /// Create a copy of JmaForecastIntensity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JmaForecastIntensityImplCopyWith<_$JmaForecastIntensityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
