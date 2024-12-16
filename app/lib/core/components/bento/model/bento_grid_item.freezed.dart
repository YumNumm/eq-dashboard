// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bento_grid_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BentoGridItem {
  String get id => throw _privateConstructorUsedError;
  BentoGridSize get size => throw _privateConstructorUsedError;
  Widget get child => throw _privateConstructorUsedError;

  /// Create a copy of BentoGridItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BentoGridItemCopyWith<BentoGridItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BentoGridItemCopyWith<$Res> {
  factory $BentoGridItemCopyWith(
          BentoGridItem value, $Res Function(BentoGridItem) then) =
      _$BentoGridItemCopyWithImpl<$Res, BentoGridItem>;
  @useResult
  $Res call({String id, BentoGridSize size, Widget child});
}

/// @nodoc
class _$BentoGridItemCopyWithImpl<$Res, $Val extends BentoGridItem>
    implements $BentoGridItemCopyWith<$Res> {
  _$BentoGridItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BentoGridItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? child = null,
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
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BentoGridItemImplCopyWith<$Res>
    implements $BentoGridItemCopyWith<$Res> {
  factory _$$BentoGridItemImplCopyWith(
          _$BentoGridItemImpl value, $Res Function(_$BentoGridItemImpl) then) =
      __$$BentoGridItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, BentoGridSize size, Widget child});
}

/// @nodoc
class __$$BentoGridItemImplCopyWithImpl<$Res>
    extends _$BentoGridItemCopyWithImpl<$Res, _$BentoGridItemImpl>
    implements _$$BentoGridItemImplCopyWith<$Res> {
  __$$BentoGridItemImplCopyWithImpl(
      _$BentoGridItemImpl _value, $Res Function(_$BentoGridItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BentoGridItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? child = null,
  }) {
    return _then(_$BentoGridItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as BentoGridSize,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$BentoGridItemImpl implements _BentoGridItem {
  const _$BentoGridItemImpl(
      {required this.id, required this.size, required this.child});

  @override
  final String id;
  @override
  final BentoGridSize size;
  @override
  final Widget child;

  @override
  String toString() {
    return 'BentoGridItem(id: $id, size: $size, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BentoGridItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, size, child);

  /// Create a copy of BentoGridItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BentoGridItemImplCopyWith<_$BentoGridItemImpl> get copyWith =>
      __$$BentoGridItemImplCopyWithImpl<_$BentoGridItemImpl>(this, _$identity);
}

abstract class _BentoGridItem implements BentoGridItem {
  const factory _BentoGridItem(
      {required final String id,
      required final BentoGridSize size,
      required final Widget child}) = _$BentoGridItemImpl;

  @override
  String get id;
  @override
  BentoGridSize get size;
  @override
  Widget get child;

  /// Create a copy of BentoGridItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BentoGridItemImplCopyWith<_$BentoGridItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
