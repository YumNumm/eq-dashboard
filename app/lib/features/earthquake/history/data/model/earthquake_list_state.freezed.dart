// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeListState _$EarthquakeListStateFromJson(Map<String, dynamic> json) {
  return _EarthquakeListState.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeListState {
  List<EarthquakeHistoryListItem> get items =>
      throw _privateConstructorUsedError;
  String? get nextToken => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeListStateCopyWith<EarthquakeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeListStateCopyWith<$Res> {
  factory $EarthquakeListStateCopyWith(
          EarthquakeListState value, $Res Function(EarthquakeListState) then) =
      _$EarthquakeListStateCopyWithImpl<$Res, EarthquakeListState>;
  @useResult
  $Res call({List<EarthquakeHistoryListItem> items, String? nextToken});
}

/// @nodoc
class _$EarthquakeListStateCopyWithImpl<$Res, $Val extends EarthquakeListState>
    implements $EarthquakeListStateCopyWith<$Res> {
  _$EarthquakeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeHistoryListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeListStateImplCopyWith<$Res>
    implements $EarthquakeListStateCopyWith<$Res> {
  factory _$$EarthquakeListStateImplCopyWith(_$EarthquakeListStateImpl value,
          $Res Function(_$EarthquakeListStateImpl) then) =
      __$$EarthquakeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EarthquakeHistoryListItem> items, String? nextToken});
}

/// @nodoc
class __$$EarthquakeListStateImplCopyWithImpl<$Res>
    extends _$EarthquakeListStateCopyWithImpl<$Res, _$EarthquakeListStateImpl>
    implements _$$EarthquakeListStateImplCopyWith<$Res> {
  __$$EarthquakeListStateImplCopyWithImpl(_$EarthquakeListStateImpl _value,
      $Res Function(_$EarthquakeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextToken = freezed,
  }) {
    return _then(_$EarthquakeListStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeHistoryListItem>,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeListStateImpl implements _EarthquakeListState {
  const _$EarthquakeListStateImpl(
      {required final List<EarthquakeHistoryListItem> items,
      required this.nextToken})
      : _items = items;

  factory _$EarthquakeListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeListStateImplFromJson(json);

  final List<EarthquakeHistoryListItem> _items;
  @override
  List<EarthquakeHistoryListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextToken;

  @override
  String toString() {
    return 'EarthquakeListState(items: $items, nextToken: $nextToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeListStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextToken);

  /// Create a copy of EarthquakeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeListStateImplCopyWith<_$EarthquakeListStateImpl> get copyWith =>
      __$$EarthquakeListStateImplCopyWithImpl<_$EarthquakeListStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeListStateImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeListState implements EarthquakeListState {
  const factory _EarthquakeListState(
      {required final List<EarthquakeHistoryListItem> items,
      required final String? nextToken}) = _$EarthquakeListStateImpl;

  factory _EarthquakeListState.fromJson(Map<String, dynamic> json) =
      _$EarthquakeListStateImpl.fromJson;

  @override
  List<EarthquakeHistoryListItem> get items;
  @override
  String? get nextToken;

  /// Create a copy of EarthquakeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeListStateImplCopyWith<_$EarthquakeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
