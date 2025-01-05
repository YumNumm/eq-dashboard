// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmdata_websocket_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DmdataWebsocketMessageModel {
  String? get lastPingId => throw _privateConstructorUsedError;
  DateTime? get lastPingAt => throw _privateConstructorUsedError;
  Duration? get lastPingDuration => throw _privateConstructorUsedError;
  DateTime? get lastPongAt => throw _privateConstructorUsedError;

  /// Create a copy of DmdataWebsocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataWebsocketMessageModelCopyWith<DmdataWebsocketMessageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataWebsocketMessageModelCopyWith<$Res> {
  factory $DmdataWebsocketMessageModelCopyWith(
          DmdataWebsocketMessageModel value,
          $Res Function(DmdataWebsocketMessageModel) then) =
      _$DmdataWebsocketMessageModelCopyWithImpl<$Res,
          DmdataWebsocketMessageModel>;
  @useResult
  $Res call(
      {String? lastPingId,
      DateTime? lastPingAt,
      Duration? lastPingDuration,
      DateTime? lastPongAt});
}

/// @nodoc
class _$DmdataWebsocketMessageModelCopyWithImpl<$Res,
        $Val extends DmdataWebsocketMessageModel>
    implements $DmdataWebsocketMessageModelCopyWith<$Res> {
  _$DmdataWebsocketMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataWebsocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPingId = freezed,
    Object? lastPingAt = freezed,
    Object? lastPingDuration = freezed,
    Object? lastPongAt = freezed,
  }) {
    return _then(_value.copyWith(
      lastPingId: freezed == lastPingId
          ? _value.lastPingId
          : lastPingId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPingAt: freezed == lastPingAt
          ? _value.lastPingAt
          : lastPingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPingDuration: freezed == lastPingDuration
          ? _value.lastPingDuration
          : lastPingDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      lastPongAt: freezed == lastPongAt
          ? _value.lastPongAt
          : lastPongAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DmdataWebsocketMessageModelImplCopyWith<$Res>
    implements $DmdataWebsocketMessageModelCopyWith<$Res> {
  factory _$$DmdataWebsocketMessageModelImplCopyWith(
          _$DmdataWebsocketMessageModelImpl value,
          $Res Function(_$DmdataWebsocketMessageModelImpl) then) =
      __$$DmdataWebsocketMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? lastPingId,
      DateTime? lastPingAt,
      Duration? lastPingDuration,
      DateTime? lastPongAt});
}

/// @nodoc
class __$$DmdataWebsocketMessageModelImplCopyWithImpl<$Res>
    extends _$DmdataWebsocketMessageModelCopyWithImpl<$Res,
        _$DmdataWebsocketMessageModelImpl>
    implements _$$DmdataWebsocketMessageModelImplCopyWith<$Res> {
  __$$DmdataWebsocketMessageModelImplCopyWithImpl(
      _$DmdataWebsocketMessageModelImpl _value,
      $Res Function(_$DmdataWebsocketMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataWebsocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPingId = freezed,
    Object? lastPingAt = freezed,
    Object? lastPingDuration = freezed,
    Object? lastPongAt = freezed,
  }) {
    return _then(_$DmdataWebsocketMessageModelImpl(
      lastPingId: freezed == lastPingId
          ? _value.lastPingId
          : lastPingId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPingAt: freezed == lastPingAt
          ? _value.lastPingAt
          : lastPingAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastPingDuration: freezed == lastPingDuration
          ? _value.lastPingDuration
          : lastPingDuration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      lastPongAt: freezed == lastPongAt
          ? _value.lastPongAt
          : lastPongAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$DmdataWebsocketMessageModelImpl
    implements _DmdataWebsocketMessageModel {
  const _$DmdataWebsocketMessageModelImpl(
      {this.lastPingId,
      this.lastPingAt,
      this.lastPingDuration,
      this.lastPongAt});

  @override
  final String? lastPingId;
  @override
  final DateTime? lastPingAt;
  @override
  final Duration? lastPingDuration;
  @override
  final DateTime? lastPongAt;

  @override
  String toString() {
    return 'DmdataWebsocketMessageModel(lastPingId: $lastPingId, lastPingAt: $lastPingAt, lastPingDuration: $lastPingDuration, lastPongAt: $lastPongAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataWebsocketMessageModelImpl &&
            (identical(other.lastPingId, lastPingId) ||
                other.lastPingId == lastPingId) &&
            (identical(other.lastPingAt, lastPingAt) ||
                other.lastPingAt == lastPingAt) &&
            (identical(other.lastPingDuration, lastPingDuration) ||
                other.lastPingDuration == lastPingDuration) &&
            (identical(other.lastPongAt, lastPongAt) ||
                other.lastPongAt == lastPongAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, lastPingId, lastPingAt, lastPingDuration, lastPongAt);

  /// Create a copy of DmdataWebsocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataWebsocketMessageModelImplCopyWith<_$DmdataWebsocketMessageModelImpl>
      get copyWith => __$$DmdataWebsocketMessageModelImplCopyWithImpl<
          _$DmdataWebsocketMessageModelImpl>(this, _$identity);
}

abstract class _DmdataWebsocketMessageModel
    implements DmdataWebsocketMessageModel {
  const factory _DmdataWebsocketMessageModel(
      {final String? lastPingId,
      final DateTime? lastPingAt,
      final Duration? lastPingDuration,
      final DateTime? lastPongAt}) = _$DmdataWebsocketMessageModelImpl;

  @override
  String? get lastPingId;
  @override
  DateTime? get lastPingAt;
  @override
  Duration? get lastPingDuration;
  @override
  DateTime? get lastPongAt;

  /// Create a copy of DmdataWebsocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataWebsocketMessageModelImplCopyWith<_$DmdataWebsocketMessageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
