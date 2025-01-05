// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContractListResponse _$ContractListResponseFromJson(Map<String, dynamic> json) {
  return _ContractListResponse.fromJson(json);
}

/// @nodoc
mixin _$ContractListResponse {
  String get responseId => throw _privateConstructorUsedError;
  String get responseTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<ContractItem> get items => throw _privateConstructorUsedError;
  DmDataError? get error => throw _privateConstructorUsedError;

  /// Serializes this ContractListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractListResponseCopyWith<ContractListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractListResponseCopyWith<$Res> {
  factory $ContractListResponseCopyWith(ContractListResponse value,
          $Res Function(ContractListResponse) then) =
      _$ContractListResponseCopyWithImpl<$Res, ContractListResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<ContractItem> items,
      DmDataError? error});

  $DmDataErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ContractListResponseCopyWithImpl<$Res,
        $Val extends ContractListResponse>
    implements $ContractListResponseCopyWith<$Res> {
  _$ContractListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ContractItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DmDataError?,
    ) as $Val);
  }

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DmDataErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $DmDataErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractListResponseImplCopyWith<$Res>
    implements $ContractListResponseCopyWith<$Res> {
  factory _$$ContractListResponseImplCopyWith(_$ContractListResponseImpl value,
          $Res Function(_$ContractListResponseImpl) then) =
      __$$ContractListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      List<ContractItem> items,
      DmDataError? error});

  @override
  $DmDataErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ContractListResponseImplCopyWithImpl<$Res>
    extends _$ContractListResponseCopyWithImpl<$Res, _$ContractListResponseImpl>
    implements _$$ContractListResponseImplCopyWith<$Res> {
  __$$ContractListResponseImplCopyWithImpl(_$ContractListResponseImpl _value,
      $Res Function(_$ContractListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(_$ContractListResponseImpl(
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
      responseTime: null == responseTime
          ? _value.responseTime
          : responseTime // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ContractItem>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DmDataError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractListResponseImpl implements _ContractListResponse {
  const _$ContractListResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      final List<ContractItem> items = const [],
      this.error})
      : _items = items;

  factory _$ContractListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractListResponseImplFromJson(json);

  @override
  final String responseId;
  @override
  final String responseTime;
  @override
  final String status;
  final List<ContractItem> _items;
  @override
  @JsonKey()
  List<ContractItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DmDataError? error;

  @override
  String toString() {
    return 'ContractListResponse(responseId: $responseId, responseTime: $responseTime, status: $status, items: $items, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractListResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseId, responseTime, status,
      const DeepCollectionEquality().hash(_items), error);

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractListResponseImplCopyWith<_$ContractListResponseImpl>
      get copyWith =>
          __$$ContractListResponseImplCopyWithImpl<_$ContractListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractListResponseImplToJson(
      this,
    );
  }
}

abstract class _ContractListResponse implements ContractListResponse {
  const factory _ContractListResponse(
      {required final String responseId,
      required final String responseTime,
      required final String status,
      final List<ContractItem> items,
      final DmDataError? error}) = _$ContractListResponseImpl;

  factory _ContractListResponse.fromJson(Map<String, dynamic> json) =
      _$ContractListResponseImpl.fromJson;

  @override
  String get responseId;
  @override
  String get responseTime;
  @override
  String get status;
  @override
  List<ContractItem> get items;
  @override
  DmDataError? get error;

  /// Create a copy of ContractListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractListResponseImplCopyWith<_$ContractListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractItem _$ContractItemFromJson(Map<String, dynamic> json) {
  return _ContractItem.fromJson(json);
}

/// @nodoc
mixin _$ContractItem {
  int get planId => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;
  ContractPrice get price => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  int get connectionCounts => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  String? get start => throw _privateConstructorUsedError;

  /// Serializes this ContractItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractItemCopyWith<ContractItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractItemCopyWith<$Res> {
  factory $ContractItemCopyWith(
          ContractItem value, $Res Function(ContractItem) then) =
      _$ContractItemCopyWithImpl<$Res, ContractItem>;
  @useResult
  $Res call(
      {int planId,
      String planName,
      String classification,
      ContractPrice price,
      bool isValid,
      int connectionCounts,
      dynamic id,
      String? start});

  $ContractPriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ContractItemCopyWithImpl<$Res, $Val extends ContractItem>
    implements $ContractItemCopyWith<$Res> {
  _$ContractItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? planName = null,
    Object? classification = null,
    Object? price = null,
    Object? isValid = null,
    Object? connectionCounts = null,
    Object? id = freezed,
    Object? start = freezed,
  }) {
    return _then(_value.copyWith(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ContractPrice,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionCounts: null == connectionCounts
          ? _value.connectionCounts
          : connectionCounts // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractPriceCopyWith<$Res> get price {
    return $ContractPriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractItemImplCopyWith<$Res>
    implements $ContractItemCopyWith<$Res> {
  factory _$$ContractItemImplCopyWith(
          _$ContractItemImpl value, $Res Function(_$ContractItemImpl) then) =
      __$$ContractItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int planId,
      String planName,
      String classification,
      ContractPrice price,
      bool isValid,
      int connectionCounts,
      dynamic id,
      String? start});

  @override
  $ContractPriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$ContractItemImplCopyWithImpl<$Res>
    extends _$ContractItemCopyWithImpl<$Res, _$ContractItemImpl>
    implements _$$ContractItemImplCopyWith<$Res> {
  __$$ContractItemImplCopyWithImpl(
      _$ContractItemImpl _value, $Res Function(_$ContractItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planId = null,
    Object? planName = null,
    Object? classification = null,
    Object? price = null,
    Object? isValid = null,
    Object? connectionCounts = null,
    Object? id = freezed,
    Object? start = freezed,
  }) {
    return _then(_$ContractItemImpl(
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ContractPrice,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionCounts: null == connectionCounts
          ? _value.connectionCounts
          : connectionCounts // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractItemImpl implements _ContractItem {
  const _$ContractItemImpl(
      {required this.planId,
      required this.planName,
      required this.classification,
      required this.price,
      required this.isValid,
      required this.connectionCounts,
      this.id,
      this.start});

  factory _$ContractItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractItemImplFromJson(json);

  @override
  final int planId;
  @override
  final String planName;
  @override
  final String classification;
  @override
  final ContractPrice price;
  @override
  final bool isValid;
  @override
  final int connectionCounts;
  @override
  final dynamic id;
  @override
  final String? start;

  @override
  String toString() {
    return 'ContractItem(planId: $planId, planName: $planName, classification: $classification, price: $price, isValid: $isValid, connectionCounts: $connectionCounts, id: $id, start: $start)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractItemImpl &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.connectionCounts, connectionCounts) ||
                other.connectionCounts == connectionCounts) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.start, start) || other.start == start));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      planId,
      planName,
      classification,
      price,
      isValid,
      connectionCounts,
      const DeepCollectionEquality().hash(id),
      start);

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractItemImplCopyWith<_$ContractItemImpl> get copyWith =>
      __$$ContractItemImplCopyWithImpl<_$ContractItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractItemImplToJson(
      this,
    );
  }
}

abstract class _ContractItem implements ContractItem {
  const factory _ContractItem(
      {required final int planId,
      required final String planName,
      required final String classification,
      required final ContractPrice price,
      required final bool isValid,
      required final int connectionCounts,
      final dynamic id,
      final String? start}) = _$ContractItemImpl;

  factory _ContractItem.fromJson(Map<String, dynamic> json) =
      _$ContractItemImpl.fromJson;

  @override
  int get planId;
  @override
  String get planName;
  @override
  String get classification;
  @override
  ContractPrice get price;
  @override
  bool get isValid;
  @override
  int get connectionCounts;
  @override
  dynamic get id;
  @override
  String? get start;

  /// Create a copy of ContractItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractItemImplCopyWith<_$ContractItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractPrice _$ContractPriceFromJson(Map<String, dynamic> json) {
  return _ContractPrice.fromJson(json);
}

/// @nodoc
mixin _$ContractPrice {
  int get day => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;

  /// Serializes this ContractPrice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContractPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractPriceCopyWith<ContractPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractPriceCopyWith<$Res> {
  factory $ContractPriceCopyWith(
          ContractPrice value, $Res Function(ContractPrice) then) =
      _$ContractPriceCopyWithImpl<$Res, ContractPrice>;
  @useResult
  $Res call({int day, int month});
}

/// @nodoc
class _$ContractPriceCopyWithImpl<$Res, $Val extends ContractPrice>
    implements $ContractPriceCopyWith<$Res> {
  _$ContractPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContractPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractPriceImplCopyWith<$Res>
    implements $ContractPriceCopyWith<$Res> {
  factory _$$ContractPriceImplCopyWith(
          _$ContractPriceImpl value, $Res Function(_$ContractPriceImpl) then) =
      __$$ContractPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int day, int month});
}

/// @nodoc
class __$$ContractPriceImplCopyWithImpl<$Res>
    extends _$ContractPriceCopyWithImpl<$Res, _$ContractPriceImpl>
    implements _$$ContractPriceImplCopyWith<$Res> {
  __$$ContractPriceImplCopyWithImpl(
      _$ContractPriceImpl _value, $Res Function(_$ContractPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContractPrice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? month = null,
  }) {
    return _then(_$ContractPriceImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractPriceImpl implements _ContractPrice {
  const _$ContractPriceImpl({required this.day, required this.month});

  factory _$ContractPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractPriceImplFromJson(json);

  @override
  final int day;
  @override
  final int month;

  @override
  String toString() {
    return 'ContractPrice(day: $day, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractPriceImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, month);

  /// Create a copy of ContractPrice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractPriceImplCopyWith<_$ContractPriceImpl> get copyWith =>
      __$$ContractPriceImplCopyWithImpl<_$ContractPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractPriceImplToJson(
      this,
    );
  }
}

abstract class _ContractPrice implements ContractPrice {
  const factory _ContractPrice(
      {required final int day, required final int month}) = _$ContractPriceImpl;

  factory _ContractPrice.fromJson(Map<String, dynamic> json) =
      _$ContractPriceImpl.fromJson;

  @override
  int get day;
  @override
  int get month;

  /// Create a copy of ContractPrice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractPriceImplCopyWith<_$ContractPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
