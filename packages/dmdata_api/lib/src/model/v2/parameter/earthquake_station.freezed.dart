// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeStationResponse _$EarthquakeStationResponseFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeStationResponse.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeStationResponse {
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
  List<EarthquakeStationItem> get items => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeStationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeStationResponseCopyWith<EarthquakeStationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeStationResponseCopyWith<$Res> {
  factory $EarthquakeStationResponseCopyWith(EarthquakeStationResponse value,
          $Res Function(EarthquakeStationResponse) then) =
      _$EarthquakeStationResponseCopyWithImpl<$Res, EarthquakeStationResponse>;
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String changeTime,
      String version,
      List<EarthquakeStationItem> items});
}

/// @nodoc
class _$EarthquakeStationResponseCopyWithImpl<$Res,
        $Val extends EarthquakeStationResponse>
    implements $EarthquakeStationResponseCopyWith<$Res> {
  _$EarthquakeStationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeStationResponse
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
              as List<EarthquakeStationItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeStationResponseImplCopyWith<$Res>
    implements $EarthquakeStationResponseCopyWith<$Res> {
  factory _$$EarthquakeStationResponseImplCopyWith(
          _$EarthquakeStationResponseImpl value,
          $Res Function(_$EarthquakeStationResponseImpl) then) =
      __$$EarthquakeStationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String responseId,
      String responseTime,
      String status,
      String changeTime,
      String version,
      List<EarthquakeStationItem> items});
}

/// @nodoc
class __$$EarthquakeStationResponseImplCopyWithImpl<$Res>
    extends _$EarthquakeStationResponseCopyWithImpl<$Res,
        _$EarthquakeStationResponseImpl>
    implements _$$EarthquakeStationResponseImplCopyWith<$Res> {
  __$$EarthquakeStationResponseImplCopyWithImpl(
      _$EarthquakeStationResponseImpl _value,
      $Res Function(_$EarthquakeStationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeStationResponse
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
    return _then(_$EarthquakeStationResponseImpl(
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
              as List<EarthquakeStationItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeStationResponseImpl implements _EarthquakeStationResponse {
  const _$EarthquakeStationResponseImpl(
      {required this.responseId,
      required this.responseTime,
      required this.status,
      required this.changeTime,
      required this.version,
      required final List<EarthquakeStationItem> items})
      : _items = items;

  factory _$EarthquakeStationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeStationResponseImplFromJson(json);

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
  final List<EarthquakeStationItem> _items;

  /// 観測点データ
  @override
  List<EarthquakeStationItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'EarthquakeStationResponse(responseId: $responseId, responseTime: $responseTime, status: $status, changeTime: $changeTime, version: $version, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeStationResponseImpl &&
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

  /// Create a copy of EarthquakeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeStationResponseImplCopyWith<_$EarthquakeStationResponseImpl>
      get copyWith => __$$EarthquakeStationResponseImplCopyWithImpl<
          _$EarthquakeStationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeStationResponseImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeStationResponse implements EarthquakeStationResponse {
  const factory _EarthquakeStationResponse(
          {required final String responseId,
          required final String responseTime,
          required final String status,
          required final String changeTime,
          required final String version,
          required final List<EarthquakeStationItem> items}) =
      _$EarthquakeStationResponseImpl;

  factory _EarthquakeStationResponse.fromJson(Map<String, dynamic> json) =
      _$EarthquakeStationResponseImpl.fromJson;

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
  List<EarthquakeStationItem> get items;

  /// Create a copy of EarthquakeStationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeStationResponseImplCopyWith<_$EarthquakeStationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarthquakeStationItem _$EarthquakeStationItemFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeStationItem.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeStationItem {
  /// 一次細分化地域
  Region get region => throw _privateConstructorUsedError;

  /// 市区町村
  City get city => throw _privateConstructorUsedError;

  /// 観測点コード
  String get noCode => throw _privateConstructorUsedError;

  /// 観測点コード（XML）
  String get code => throw _privateConstructorUsedError;

  /// 観測点名
  String get name => throw _privateConstructorUsedError;

  /// 観測点名（カナ）
  String get kana => throw _privateConstructorUsedError;

  /// データの運用状態
  /// 現: 運用中
  /// 変更: 名称、住所、位置情報の修正
  /// 新規: パラメータ変更時刻より運用開始
  /// 廃止: パラメータ変更時刻をもって運用終了
  String get status => throw _privateConstructorUsedError;

  /// 所属する機関
  String get owner => throw _privateConstructorUsedError;

  /// 所在する緯度
  String get latitude => throw _privateConstructorUsedError;

  /// 所在する経度
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeStationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeStationItemCopyWith<EarthquakeStationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeStationItemCopyWith<$Res> {
  factory $EarthquakeStationItemCopyWith(EarthquakeStationItem value,
          $Res Function(EarthquakeStationItem) then) =
      _$EarthquakeStationItemCopyWithImpl<$Res, EarthquakeStationItem>;
  @useResult
  $Res call(
      {Region region,
      City city,
      String noCode,
      String code,
      String name,
      String kana,
      String status,
      String owner,
      String latitude,
      String longitude});

  $RegionCopyWith<$Res> get region;
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$EarthquakeStationItemCopyWithImpl<$Res,
        $Val extends EarthquakeStationItem>
    implements $EarthquakeStationItemCopyWith<$Res> {
  _$EarthquakeStationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? city = null,
    Object? noCode = null,
    Object? code = null,
    Object? name = null,
    Object? kana = null,
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
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      noCode: null == noCode
          ? _value.noCode
          : noCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EarthquakeStationItemImplCopyWith<$Res>
    implements $EarthquakeStationItemCopyWith<$Res> {
  factory _$$EarthquakeStationItemImplCopyWith(
          _$EarthquakeStationItemImpl value,
          $Res Function(_$EarthquakeStationItemImpl) then) =
      __$$EarthquakeStationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Region region,
      City city,
      String noCode,
      String code,
      String name,
      String kana,
      String status,
      String owner,
      String latitude,
      String longitude});

  @override
  $RegionCopyWith<$Res> get region;
  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$EarthquakeStationItemImplCopyWithImpl<$Res>
    extends _$EarthquakeStationItemCopyWithImpl<$Res,
        _$EarthquakeStationItemImpl>
    implements _$$EarthquakeStationItemImplCopyWith<$Res> {
  __$$EarthquakeStationItemImplCopyWithImpl(_$EarthquakeStationItemImpl _value,
      $Res Function(_$EarthquakeStationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? city = null,
    Object? noCode = null,
    Object? code = null,
    Object? name = null,
    Object? kana = null,
    Object? status = null,
    Object? owner = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$EarthquakeStationItemImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      noCode: null == noCode
          ? _value.noCode
          : noCode // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
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
class _$EarthquakeStationItemImpl implements _EarthquakeStationItem {
  const _$EarthquakeStationItemImpl(
      {required this.region,
      required this.city,
      required this.noCode,
      required this.code,
      required this.name,
      required this.kana,
      required this.status,
      required this.owner,
      required this.latitude,
      required this.longitude});

  factory _$EarthquakeStationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeStationItemImplFromJson(json);

  /// 一次細分化地域
  @override
  final Region region;

  /// 市区町村
  @override
  final City city;

  /// 観測点コード
  @override
  final String noCode;

  /// 観測点コード（XML）
  @override
  final String code;

  /// 観測点名
  @override
  final String name;

  /// 観測点名（カナ）
  @override
  final String kana;

  /// データの運用状態
  /// 現: 運用中
  /// 変更: 名称、住所、位置情報の修正
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
    return 'EarthquakeStationItem(region: $region, city: $city, noCode: $noCode, code: $code, name: $name, kana: $kana, status: $status, owner: $owner, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeStationItemImpl &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.noCode, noCode) || other.noCode == noCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, region, city, noCode, code, name,
      kana, status, owner, latitude, longitude);

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeStationItemImplCopyWith<_$EarthquakeStationItemImpl>
      get copyWith => __$$EarthquakeStationItemImplCopyWithImpl<
          _$EarthquakeStationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeStationItemImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeStationItem implements EarthquakeStationItem {
  const factory _EarthquakeStationItem(
      {required final Region region,
      required final City city,
      required final String noCode,
      required final String code,
      required final String name,
      required final String kana,
      required final String status,
      required final String owner,
      required final String latitude,
      required final String longitude}) = _$EarthquakeStationItemImpl;

  factory _EarthquakeStationItem.fromJson(Map<String, dynamic> json) =
      _$EarthquakeStationItemImpl.fromJson;

  /// 一次細分化地域
  @override
  Region get region;

  /// 市区町村
  @override
  City get city;

  /// 観測点コード
  @override
  String get noCode;

  /// 観測点コード（XML）
  @override
  String get code;

  /// 観測点名
  @override
  String get name;

  /// 観測点名（カナ）
  @override
  String get kana;

  /// データの運用状態
  /// 現: 運用中
  /// 変更: 名称、住所、位置情報の修正
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

  /// Create a copy of EarthquakeStationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeStationItemImplCopyWith<_$EarthquakeStationItemImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// 一次細分化地域名（カナ）
  String get kana => throw _privateConstructorUsedError;

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
  $Res call({String code, String name, String kana});
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
    Object? kana = null,
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
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
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
  $Res call({String code, String name, String kana});
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
    Object? kana = null,
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
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl(
      {required this.code, required this.name, required this.kana});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  /// 一次細分化地域コード
  @override
  final String code;

  /// 一次細分化地域名
  @override
  final String name;

  /// 一次細分化地域名（カナ）
  @override
  final String kana;

  @override
  String toString() {
    return 'Region(code: $code, name: $name, kana: $kana)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, kana);

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
      {required final String code,
      required final String name,
      required final String kana}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  /// 一次細分化地域コード
  @override
  String get code;

  /// 一次細分化地域名
  @override
  String get name;

  /// 一次細分化地域名（カナ）
  @override
  String get kana;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return _City.fromJson(json);
}

/// @nodoc
mixin _$City {
  /// 市区町村コード
  String get code => throw _privateConstructorUsedError;

  /// 市区町村名
  String get name => throw _privateConstructorUsedError;

  /// 市区町村名（カナ）
  String get kana => throw _privateConstructorUsedError;

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CityCopyWith<City> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res, City>;
  @useResult
  $Res call({String code, String name, String kana});
}

/// @nodoc
class _$CityCopyWithImpl<$Res, $Val extends City>
    implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? kana = null,
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
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CityImplCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$$CityImplCopyWith(
          _$CityImpl value, $Res Function(_$CityImpl) then) =
      __$$CityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, String kana});
}

/// @nodoc
class __$$CityImplCopyWithImpl<$Res>
    extends _$CityCopyWithImpl<$Res, _$CityImpl>
    implements _$$CityImplCopyWith<$Res> {
  __$$CityImplCopyWithImpl(_$CityImpl _value, $Res Function(_$CityImpl) _then)
      : super(_value, _then);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? kana = null,
  }) {
    return _then(_$CityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CityImpl implements _City {
  const _$CityImpl(
      {required this.code, required this.name, required this.kana});

  factory _$CityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CityImplFromJson(json);

  /// 市区町村コード
  @override
  final String code;

  /// 市区町村名
  @override
  final String name;

  /// 市区町村名（カナ）
  @override
  final String kana;

  @override
  String toString() {
    return 'City(code: $code, name: $name, kana: $kana)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, kana);

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      __$$CityImplCopyWithImpl<_$CityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CityImplToJson(
      this,
    );
  }
}

abstract class _City implements City {
  const factory _City(
      {required final String code,
      required final String name,
      required final String kana}) = _$CityImpl;

  factory _City.fromJson(Map<String, dynamic> json) = _$CityImpl.fromJson;

  /// 市区町村コード
  @override
  String get code;

  /// 市区町村名
  @override
  String get name;

  /// 市区町村名（カナ）
  @override
  String get kana;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityImplCopyWith<_$CityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
