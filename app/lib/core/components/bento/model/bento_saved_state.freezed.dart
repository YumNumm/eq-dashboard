// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bento_saved_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BentoSavedState _$BentoSavedStateFromJson(Map<String, dynamic> json) {
  return _BentoSavedState.fromJson(json);
}

/// @nodoc
mixin _$BentoSavedState {
  List<BentoConfig> get configs => throw _privateConstructorUsedError;

  /// Serializes this BentoSavedState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BentoSavedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BentoSavedStateCopyWith<BentoSavedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoSavedStateCopyWith<$Res> {
  factory $BentoSavedStateCopyWith(
          BentoSavedState value, $Res Function(BentoSavedState) then) =
      _$BentoSavedStateCopyWithImpl<$Res, BentoSavedState>;
  @useResult
  $Res call({List<BentoConfig> configs});
}

/// @nodoc
class _$BentoSavedStateCopyWithImpl<$Res, $Val extends BentoSavedState>
    implements $BentoSavedStateCopyWith<$Res> {
  _$BentoSavedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BentoSavedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_value.copyWith(
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<BentoConfig>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BentoSavedStateImplCopyWith<$Res>
    implements $BentoSavedStateCopyWith<$Res> {
  factory _$$BentoSavedStateImplCopyWith(_$BentoSavedStateImpl value,
          $Res Function(_$BentoSavedStateImpl) then) =
      __$$BentoSavedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BentoConfig> configs});
}

/// @nodoc
class __$$BentoSavedStateImplCopyWithImpl<$Res>
    extends _$BentoSavedStateCopyWithImpl<$Res, _$BentoSavedStateImpl>
    implements _$$BentoSavedStateImplCopyWith<$Res> {
  __$$BentoSavedStateImplCopyWithImpl(
      _$BentoSavedStateImpl _value, $Res Function(_$BentoSavedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BentoSavedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_$BentoSavedStateImpl(
      configs: null == configs
          ? _value._configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<BentoConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BentoSavedStateImpl implements _BentoSavedState {
  const _$BentoSavedStateImpl({required final List<BentoConfig> configs})
      : _configs = configs;

  factory _$BentoSavedStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BentoSavedStateImplFromJson(json);

  final List<BentoConfig> _configs;
  @override
  List<BentoConfig> get configs {
    if (_configs is EqualUnmodifiableListView) return _configs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configs);
  }

  @override
  String toString() {
    return 'BentoSavedState(configs: $configs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoSavedStateImpl &&
            const DeepCollectionEquality().equals(other._configs, _configs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_configs));

  /// Create a copy of BentoSavedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BentoSavedStateImplCopyWith<_$BentoSavedStateImpl> get copyWith =>
      __$$BentoSavedStateImplCopyWithImpl<_$BentoSavedStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BentoSavedStateImplToJson(
      this,
    );
  }
}

abstract class _BentoSavedState implements BentoSavedState {
  const factory _BentoSavedState({required final List<BentoConfig> configs}) =
      _$BentoSavedStateImpl;

  factory _BentoSavedState.fromJson(Map<String, dynamic> json) =
      _$BentoSavedStateImpl.fromJson;

  @override
  List<BentoConfig> get configs;

  /// Create a copy of BentoSavedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BentoSavedStateImplCopyWith<_$BentoSavedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
