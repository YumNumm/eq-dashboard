// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eew_list_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EewListNotifierState _$EewListNotifierStateFromJson(Map<String, dynamic> json) {
  return _EewListNotifierState.fromJson(json);
}

/// @nodoc
mixin _$EewListNotifierState {
  List<EewListItem> get items => throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;
  bool get isSupportingRealtimeUpdate => throw _privateConstructorUsedError;

  /// Serializes this EewListNotifierState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EewListNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EewListNotifierStateCopyWith<EewListNotifierState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EewListNotifierStateCopyWith<$Res> {
  factory $EewListNotifierStateCopyWith(EewListNotifierState value,
          $Res Function(EewListNotifierState) then) =
      _$EewListNotifierStateCopyWithImpl<$Res, EewListNotifierState>;
  @useResult
  $Res call(
      {List<EewListItem> items,
      String? nextToken,
      DateTime? lastUpdatedAt,
      bool isSupportingRealtimeUpdate});
}

/// @nodoc
class _$EewListNotifierStateCopyWithImpl<$Res,
        $Val extends EewListNotifierState>
    implements $EewListNotifierStateCopyWith<$Res> {
  _$EewListNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EewListNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
    Object? lastUpdatedAt = freezed,
    Object? isSupportingRealtimeUpdate = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EewListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSupportingRealtimeUpdate: null == isSupportingRealtimeUpdate
          ? _value.isSupportingRealtimeUpdate
          : isSupportingRealtimeUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EewListNotifierStateImplCopyWith<$Res>
    implements $EewListNotifierStateCopyWith<$Res> {
  factory _$$EewListNotifierStateImplCopyWith(_$EewListNotifierStateImpl value,
          $Res Function(_$EewListNotifierStateImpl) then) =
      __$$EewListNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EewListItem> items,
      String? nextToken,
      DateTime? lastUpdatedAt,
      bool isSupportingRealtimeUpdate});
}

/// @nodoc
class __$$EewListNotifierStateImplCopyWithImpl<$Res>
    extends _$EewListNotifierStateCopyWithImpl<$Res, _$EewListNotifierStateImpl>
    implements _$$EewListNotifierStateImplCopyWith<$Res> {
  __$$EewListNotifierStateImplCopyWithImpl(_$EewListNotifierStateImpl _value,
      $Res Function(_$EewListNotifierStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EewListNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
    Object? lastUpdatedAt = freezed,
    Object? isSupportingRealtimeUpdate = null,
  }) {
    return _then(_$EewListNotifierStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EewListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSupportingRealtimeUpdate: null == isSupportingRealtimeUpdate
          ? _value.isSupportingRealtimeUpdate
          : isSupportingRealtimeUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EewListNotifierStateImpl implements _EewListNotifierState {
  const _$EewListNotifierStateImpl(
      {required final List<EewListItem> items,
      required this.nextToken,
      required this.lastUpdatedAt,
      required this.isSupportingRealtimeUpdate})
      : _items = items;

  factory _$EewListNotifierStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$EewListNotifierStateImplFromJson(json);

  final List<EewListItem> _items;
  @override
  List<EewListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextToken;
  @override
  final DateTime? lastUpdatedAt;
  @override
  final bool isSupportingRealtimeUpdate;

  @override
  String toString() {
    return 'EewListNotifierState(items: $items, nextToken: $nextToken, lastUpdatedAt: $lastUpdatedAt, isSupportingRealtimeUpdate: $isSupportingRealtimeUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EewListNotifierStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt) &&
            (identical(other.isSupportingRealtimeUpdate,
                    isSupportingRealtimeUpdate) ||
                other.isSupportingRealtimeUpdate ==
                    isSupportingRealtimeUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      nextToken,
      lastUpdatedAt,
      isSupportingRealtimeUpdate);

  /// Create a copy of EewListNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EewListNotifierStateImplCopyWith<_$EewListNotifierStateImpl>
      get copyWith =>
          __$$EewListNotifierStateImplCopyWithImpl<_$EewListNotifierStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EewListNotifierStateImplToJson(
      this,
    );
  }
}

abstract class _EewListNotifierState implements EewListNotifierState {
  const factory _EewListNotifierState(
          {required final List<EewListItem> items,
          required final String? nextToken,
          required final DateTime? lastUpdatedAt,
          required final bool isSupportingRealtimeUpdate}) =
      _$EewListNotifierStateImpl;

  factory _EewListNotifierState.fromJson(Map<String, dynamic> json) =
      _$EewListNotifierStateImpl.fromJson;

  @override
  List<EewListItem> get items;
  @override
  String? get nextToken;
  @override
  DateTime? get lastUpdatedAt;
  @override
  bool get isSupportingRealtimeUpdate;

  /// Create a copy of EewListNotifierState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EewListNotifierStateImplCopyWith<_$EewListNotifierStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
