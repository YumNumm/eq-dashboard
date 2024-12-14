// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'realtime_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RealtimeStationResponse _$RealtimeStationResponseFromJson(
    Map<String, dynamic> json) {
  return _RealtimeStationResponse.fromJson(json);
}

/// @nodoc
mixin _$RealtimeStationResponse {
  /// API処理ID
  String get responseId => throw _privateConstructorUsedError;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime => throw _privateConstructorUsedError;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status => throw _privateConstructorUsedError;

  /// 気象庁によるパラメータ変更時刻
  String get changeTime => throw _privateConstructorUsedError;

  /// データのバージョン
  String get version => throw _privateConstructorUsedError;

  /// 観測点データ
  List<RealtimeStationItem> get items => throw _privateConstructorUsedError;

  /// Serializes this RealtimeStationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealtimeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealtimeStationResponseCopyWith<RealtimeStationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeStationResponseCopyWith<$Res> {
  factory $RealtimeStationResponseCopyWith(RealtimeStationResponse value,
          $Res Function(RealtimeStationResponse) then) =
      _$RealtimeStationResponseCopyWithImpl<$Res, RealtimeStationResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String changeTime,
      String version,
      List<RealtimeStationItem> items});
}

/// @nodoc
class _$RealtimeStationResponseCopyWithImpl<$Res,
        $Val extends RealtimeStationResponse>
    implements $RealtimeStationResponseCopyWith<$Res> {
  _$RealtimeStationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealtimeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? changeTime = null,
    Object? version = null,
    Object? items = null,
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
      changeTime: null == changeTime
          ? _value.changeTime
          : changeTime // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RealtimeStationItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealtimeStationResponseImplCopyWith<$Res>
    implements $RealtimeStationResponseCopyWith<$Res> {
  factory _$$RealtimeStationResponseImplCopyWith(
          _$RealtimeStationResponseImpl value,
          $Res Function(_$RealtimeStationResponseImpl) then) =
      __$$RealtimeStationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String changeTime,
      String version,
      List<RealtimeStationItem> items});
}

/// @nodoc
class __$$RealtimeStationResponseImplCopyWithImpl<$Res>
    extends _$RealtimeStationResponseCopyWithImpl<$Res,
        _$RealtimeStationResponseImpl>
    implements _$$RealtimeStationResponseImplCopyWith<$Res> {
  __$$RealtimeStationResponseImplCopyWithImpl(
      _$RealtimeStationResponseImpl _value,
      $Res Function(_$RealtimeStationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseId = null,
    Object? responseTime = null,
    Object? status = null,
    Object? changeTime = null,
    Object? version = null,
    Object? items = null,
  }) {
    return _then(_$RealtimeStationResponseImpl(
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
      changeTime: null == changeTime
          ? _value.changeTime
          : changeTime // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RealtimeStationItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealtimeStationResponseImpl implements _RealtimeStationResponse {
  const _$RealtimeStationResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required this.changeTime,
      required this.version,
      required final List<RealtimeStationItem> items})
      : _items = items;

  factory _$RealtimeStationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealtimeStationResponseImplFromJson(json);

  /// API処理ID
  @override
  final String responseId;

  /// API処理時刻（ISO8601拡張形式）
  @override
  final String responseTime;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  @override
  final String status;

  /// 気象庁によるパラメータ変更時刻
  @override
  final String changeTime;

  /// データのバージョン
  @override
  final String version;

  /// 観測点データ
  final List<RealtimeStationItem> _items;

  /// 観測点データ
  @override
  List<RealtimeStationItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RealtimeStationResponse(responseId: $responseId, responseTime: $responseTime, status: $status, changeTime: $changeTime, version: $version, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealtimeStationResponseImpl &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId) &&
            (identical(other.responseTime, responseTime) ||
                other.responseTime == responseTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.changeTime, changeTime) ||
                other.changeTime == changeTime) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responseId, responseTime, status,
      changeTime, version, const DeepCollectionEquality().hash(_items));

  /// Create a copy of RealtimeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealtimeStationResponseImplCopyWith<_$RealtimeStationResponseImpl>
      get copyWith => __$$RealtimeStationResponseImplCopyWithImpl<
          _$RealtimeStationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealtimeStationResponseImplToJson(
      this,
    );
  }
}

abstract class _RealtimeStationResponse implements RealtimeStationResponse {
  const factory _RealtimeStationResponse(
          {required final String responseId,
          required final String responseTime,
          required final String status,
          required final String changeTime,
          required final String version,
          required final List<RealtimeStationItem> items}) =
      _$RealtimeStationResponseImpl;

  factory _RealtimeStationResponse.fromJson(Map<String, dynamic> json) =
      _$RealtimeStationResponseImpl.fromJson;

  /// API処理ID
  @override
  String get responseId;

  /// API処理時刻（ISO8601拡張形式）
  @override
  String get responseTime;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  @override
  String get status;

  /// 気象庁によるパラメータ変更時刻
  @override
  String get changeTime;

  /// データのバージョン
  @override
  String get version;

  /// 観測点データ
  @override
  List<RealtimeStationItem> get items;

  /// Create a copy of RealtimeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealtimeStationResponseImplCopyWith<_$RealtimeStationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RealtimeStationItem _$RealtimeStationItemFromJson(Map<String, dynamic> json) {
  return _RealtimeStationItem.fromJson(json);
}

/// @nodoc
mixin _$RealtimeStationItem {
  /// 一次細分化地域
  Region get region => throw _privateConstructorUsedError;

  /// 観測点コード（XML）
  String get code => throw _privateConstructorUsedError;

  /// 観測点名
  String get name => throw _privateConstructorUsedError;

  /// データの運用状態
  /// 現: 運用中
  /// 新規: パラメータ変更時刻より運用開始
  /// 廃止: パラメータ変更時刻をもって運用終了
  String get status => throw _privateConstructorUsedError;

  /// 所属する機関
  String get owner => throw _privateConstructorUsedError;

  /// 所在する緯度
  String get latitude => throw _privateConstructorUsedError;

  /// 所在する経度
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this RealtimeStationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealtimeStationItemCopyWith<RealtimeStationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealtimeStationItemCopyWith<$Res> {
  factory $RealtimeStationItemCopyWith(
          RealtimeStationItem value, $Res Function(RealtimeStationItem) then) =
      _$RealtimeStationItemCopyWithImpl<$Res, RealtimeStationItem>;
  @useResult
  $Res call(
      {Region region,
      String code,
      String name,
      String status,
      String owner,
      String latitude,
      String longitude});

  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$RealtimeStationItemCopyWithImpl<$Res, $Val extends RealtimeStationItem>
    implements $RealtimeStationItemCopyWith<$Res> {
  _$RealtimeStationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? code = null,
    Object? name = null,
    Object? status = null,
    Object? owner = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RealtimeStationItemImplCopyWith<$Res>
    implements $RealtimeStationItemCopyWith<$Res> {
  factory _$$RealtimeStationItemImplCopyWith(_$RealtimeStationItemImpl value,
          $Res Function(_$RealtimeStationItemImpl) then) =
      __$$RealtimeStationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Region region,
      String code,
      String name,
      String status,
      String owner,
      String latitude,
      String longitude});

  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$RealtimeStationItemImplCopyWithImpl<$Res>
    extends _$RealtimeStationItemCopyWithImpl<$Res, _$RealtimeStationItemImpl>
    implements _$$RealtimeStationItemImplCopyWith<$Res> {
  __$$RealtimeStationItemImplCopyWithImpl(_$RealtimeStationItemImpl _value,
      $Res Function(_$RealtimeStationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? code = null,
    Object? name = null,
    Object? status = null,
    Object? owner = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$RealtimeStationItemImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealtimeStationItemImpl implements _RealtimeStationItem {
  const _$RealtimeStationItemImpl(
      {required this.region,
      required this.code,
      required this.name,
      required this.status,
      required this.owner,
      required this.latitude,
      required this.longitude});

  factory _$RealtimeStationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealtimeStationItemImplFromJson(json);

  /// 一次細分化地域
  @override
  final Region region;

  /// 観測点コード（XML）
  @override
  final String code;

  /// 観測点名
  @override
  final String name;

  /// データの運用状態
  /// 現: 運用中
  /// 新規: パラメータ変更時刻より運用開始
  /// 廃止: パラメータ変更時刻をもって運用終了
  @override
  final String status;

  /// 所属する機関
  @override
  final String owner;

  /// 所在する緯度
  @override
  final String latitude;

  /// 所在する経度
  @override
  final String longitude;

  @override
  String toString() {
    return 'RealtimeStationItem(region: $region, code: $code, name: $name, status: $status, owner: $owner, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealtimeStationItemImpl &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, region, code, name, status, owner, latitude, longitude);

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealtimeStationItemImplCopyWith<_$RealtimeStationItemImpl> get copyWith =>
      __$$RealtimeStationItemImplCopyWithImpl<_$RealtimeStationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealtimeStationItemImplToJson(
      this,
    );
  }
}

abstract class _RealtimeStationItem implements RealtimeStationItem {
  const factory _RealtimeStationItem(
      {required final Region region,
      required final String code,
      required final String name,
      required final String status,
      required final String owner,
      required final String latitude,
      required final String longitude}) = _$RealtimeStationItemImpl;

  factory _RealtimeStationItem.fromJson(Map<String, dynamic> json) =
      _$RealtimeStationItemImpl.fromJson;

  /// 一次細分化地域
  @override
  Region get region;

  /// 観測点コード（XML）
  @override
  String get code;

  /// 観測点名
  @override
  String get name;

  /// データの運用状態
  /// 現: 運用中
  /// 新規: パラメータ変更時刻より運用開始
  /// 廃止: パラメータ変更時刻をもって運用終了
  @override
  String get status;

  /// 所属する機関
  @override
  String get owner;

  /// 所在する緯度
  @override
  String get latitude;

  /// 所在する経度
  @override
  String get longitude;

  /// Create a copy of RealtimeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealtimeStationItemImplCopyWith<_$RealtimeStationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  /// 一次細分化地域コード
  String get code => throw _privateConstructorUsedError;

  /// 一次細分化地域名
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$RegionImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl({required this.code, required this.name});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  /// 一次細分化地域コード
  @override
  final String code;

  /// 一次細分化地域名
  @override
  final String name;

  @override
  String toString() {
    return 'Region(code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
      {required final String code, required final String name}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  /// 一次細分化地域コード
  @override
  String get code;

  /// 一次細分化地域名
  @override
  String get name;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
