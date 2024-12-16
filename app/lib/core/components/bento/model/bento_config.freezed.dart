// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bento_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BentoConfig _$BentoConfigFromJson(Map<String, dynamic> json) {
  return _BentoConfig.fromJson(json);
}

/// @nodoc
mixin _$BentoConfig {
  String get id => throw _privateConstructorUsedError;
  BentoGridSize get size => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;

  /// Serializes this BentoConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BentoConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BentoConfigCopyWith<BentoConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoConfigCopyWith<$Res> {
  factory $BentoConfigCopyWith(
          BentoConfig value, $Res Function(BentoConfig) then) =
      _$BentoConfigCopyWithImpl<$Res, BentoConfig>;
  @useResult
  $Res call({String id, BentoGridSize size, int order});
}

/// @nodoc
class _$BentoConfigCopyWithImpl<$Res, $Val extends BentoConfig>
    implements $BentoConfigCopyWith<$Res> {
  _$BentoConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BentoConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as BentoGridSize,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BentoConfigImplCopyWith<$Res>
    implements $BentoConfigCopyWith<$Res> {
  factory _$$BentoConfigImplCopyWith(
          _$BentoConfigImpl value, $Res Function(_$BentoConfigImpl) then) =
      __$$BentoConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, BentoGridSize size, int order});
}

/// @nodoc
class __$$BentoConfigImplCopyWithImpl<$Res>
    extends _$BentoConfigCopyWithImpl<$Res, _$BentoConfigImpl>
    implements _$$BentoConfigImplCopyWith<$Res> {
  __$$BentoConfigImplCopyWithImpl(
      _$BentoConfigImpl _value, $Res Function(_$BentoConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of BentoConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? order = null,
  }) {
    return _then(_$BentoConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as BentoGridSize,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BentoConfigImpl implements _BentoConfig {
  const _$BentoConfigImpl(
      {required this.id, required this.size, required this.order});

  factory _$BentoConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BentoConfigImplFromJson(json);

  @override
  final String id;
  @override
  final BentoGridSize size;
  @override
  final int order;

  @override
  String toString() {
    return 'BentoConfig(id: $id, size: $size, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, size, order);

  /// Create a copy of BentoConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BentoConfigImplCopyWith<_$BentoConfigImpl> get copyWith =>
      __$$BentoConfigImplCopyWithImpl<_$BentoConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BentoConfigImplToJson(
      this,
    );
  }
}

abstract class _BentoConfig implements BentoConfig {
  const factory _BentoConfig(
      {required final String id,
      required final BentoGridSize size,
      required final int order}) = _$BentoConfigImpl;

  factory _BentoConfig.fromJson(Map<String, dynamic> json) =
      _$BentoConfigImpl.fromJson;

  @override
  String get id;
  @override
  BentoGridSize get size;
  @override
  int get order;

  /// Create a copy of BentoConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BentoConfigImplCopyWith<_$BentoConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
