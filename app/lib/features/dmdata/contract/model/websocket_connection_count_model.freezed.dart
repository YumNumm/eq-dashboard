// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_connection_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebsocketConnectionCountModel _$WebsocketConnectionCountModelFromJson(
    Map<String, dynamic> json) {
  return _WebsocketConnectionCountModel.fromJson(json);
}

/// @nodoc
mixin _$WebsocketConnectionCountModel {
  int get availableCount => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this WebsocketConnectionCountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebsocketConnectionCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebsocketConnectionCountModelCopyWith<WebsocketConnectionCountModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketConnectionCountModelCopyWith<$Res> {
  factory $WebsocketConnectionCountModelCopyWith(
          WebsocketConnectionCountModel value,
          $Res Function(WebsocketConnectionCountModel) then) =
      _$WebsocketConnectionCountModelCopyWithImpl<$Res,
          WebsocketConnectionCountModel>;
  @useResult
  $Res call({int availableCount, int totalCount});
}

/// @nodoc
class _$WebsocketConnectionCountModelCopyWithImpl<$Res,
        $Val extends WebsocketConnectionCountModel>
    implements $WebsocketConnectionCountModelCopyWith<$Res> {
  _$WebsocketConnectionCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebsocketConnectionCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCount = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      availableCount: null == availableCount
          ? _value.availableCount
          : availableCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketConnectionCountModelImplCopyWith<$Res>
    implements $WebsocketConnectionCountModelCopyWith<$Res> {
  factory _$$WebsocketConnectionCountModelImplCopyWith(
          _$WebsocketConnectionCountModelImpl value,
          $Res Function(_$WebsocketConnectionCountModelImpl) then) =
      __$$WebsocketConnectionCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int availableCount, int totalCount});
}

/// @nodoc
class __$$WebsocketConnectionCountModelImplCopyWithImpl<$Res>
    extends _$WebsocketConnectionCountModelCopyWithImpl<$Res,
        _$WebsocketConnectionCountModelImpl>
    implements _$$WebsocketConnectionCountModelImplCopyWith<$Res> {
  __$$WebsocketConnectionCountModelImplCopyWithImpl(
      _$WebsocketConnectionCountModelImpl _value,
      $Res Function(_$WebsocketConnectionCountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebsocketConnectionCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCount = null,
    Object? totalCount = null,
  }) {
    return _then(_$WebsocketConnectionCountModelImpl(
      availableCount: null == availableCount
          ? _value.availableCount
          : availableCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketConnectionCountModelImpl
    implements _WebsocketConnectionCountModel {
  const _$WebsocketConnectionCountModelImpl(
      {required this.availableCount, required this.totalCount});

  factory _$WebsocketConnectionCountModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WebsocketConnectionCountModelImplFromJson(json);

  @override
  final int availableCount;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'WebsocketConnectionCountModel(availableCount: $availableCount, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsocketConnectionCountModelImpl &&
            (identical(other.availableCount, availableCount) ||
                other.availableCount == availableCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, availableCount, totalCount);

  /// Create a copy of WebsocketConnectionCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketConnectionCountModelImplCopyWith<
          _$WebsocketConnectionCountModelImpl>
      get copyWith => __$$WebsocketConnectionCountModelImplCopyWithImpl<
          _$WebsocketConnectionCountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketConnectionCountModelImplToJson(
      this,
    );
  }
}

abstract class _WebsocketConnectionCountModel
    implements WebsocketConnectionCountModel {
  const factory _WebsocketConnectionCountModel(
      {required final int availableCount,
      required final int totalCount}) = _$WebsocketConnectionCountModelImpl;

  factory _WebsocketConnectionCountModel.fromJson(Map<String, dynamic> json) =
      _$WebsocketConnectionCountModelImpl.fromJson;

  @override
  int get availableCount;
  @override
  int get totalCount;

  /// Create a copy of WebsocketConnectionCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebsocketConnectionCountModelImplCopyWith<
          _$WebsocketConnectionCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
