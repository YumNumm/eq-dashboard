// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebsocketListItemModel _$WebsocketListItemModelFromJson(
    Map<String, dynamic> json) {
  return _WebsocketUiModel.fromJson(json);
}

/// @nodoc
mixin _$WebsocketListItemModel {
  String get id => throw _privateConstructorUsedError;
  SocketStatus get status => throw _privateConstructorUsedError;
  List<String> get classifications => throw _privateConstructorUsedError;
  bool get test => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  String? get ipAddress => throw _privateConstructorUsedError;
  String? get server => throw _privateConstructorUsedError;
  String? get appName => throw _privateConstructorUsedError;

  /// Serializes this WebsocketListItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebsocketListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebsocketListItemModelCopyWith<WebsocketListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketListItemModelCopyWith<$Res> {
  factory $WebsocketListItemModelCopyWith(WebsocketListItemModel value,
          $Res Function(WebsocketListItemModel) then) =
      _$WebsocketListItemModelCopyWithImpl<$Res, WebsocketListItemModel>;
  @useResult
  $Res call(
      {String id,
      SocketStatus status,
      List<String> classifications,
      bool test,
      DateTime start,
      String? ipAddress,
      String? server,
      String? appName});
}

/// @nodoc
class _$WebsocketListItemModelCopyWithImpl<$Res,
        $Val extends WebsocketListItemModel>
    implements $WebsocketListItemModelCopyWith<$Res> {
  _$WebsocketListItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebsocketListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? classifications = null,
    Object? test = null,
    Object? start = null,
    Object? ipAddress = freezed,
    Object? server = freezed,
    Object? appName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SocketStatus,
      classifications: null == classifications
          ? _value.classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketUiModelImplCopyWith<$Res>
    implements $WebsocketListItemModelCopyWith<$Res> {
  factory _$$WebsocketUiModelImplCopyWith(_$WebsocketUiModelImpl value,
          $Res Function(_$WebsocketUiModelImpl) then) =
      __$$WebsocketUiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SocketStatus status,
      List<String> classifications,
      bool test,
      DateTime start,
      String? ipAddress,
      String? server,
      String? appName});
}

/// @nodoc
class __$$WebsocketUiModelImplCopyWithImpl<$Res>
    extends _$WebsocketListItemModelCopyWithImpl<$Res, _$WebsocketUiModelImpl>
    implements _$$WebsocketUiModelImplCopyWith<$Res> {
  __$$WebsocketUiModelImplCopyWithImpl(_$WebsocketUiModelImpl _value,
      $Res Function(_$WebsocketUiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebsocketListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? classifications = null,
    Object? test = null,
    Object? start = null,
    Object? ipAddress = freezed,
    Object? server = freezed,
    Object? appName = freezed,
  }) {
    return _then(_$WebsocketUiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SocketStatus,
      classifications: null == classifications
          ? _value._classifications
          : classifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as bool,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as String?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketUiModelImpl implements _WebsocketUiModel {
  const _$WebsocketUiModelImpl(
      {required this.id,
      required this.status,
      required final List<String> classifications,
      required this.test,
      required this.start,
      required this.ipAddress,
      required this.server,
      required this.appName})
      : _classifications = classifications;

  factory _$WebsocketUiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebsocketUiModelImplFromJson(json);

  @override
  final String id;
  @override
  final SocketStatus status;
  final List<String> _classifications;
  @override
  List<String> get classifications {
    if (_classifications is EqualUnmodifiableListView) return _classifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classifications);
  }

  @override
  final bool test;
  @override
  final DateTime start;
  @override
  final String? ipAddress;
  @override
  final String? server;
  @override
  final String? appName;

  @override
  String toString() {
    return 'WebsocketListItemModel(id: $id, status: $status, classifications: $classifications, test: $test, start: $start, ipAddress: $ipAddress, server: $server, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsocketUiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._classifications, _classifications) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.server, server) || other.server == server) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      const DeepCollectionEquality().hash(_classifications),
      test,
      start,
      ipAddress,
      server,
      appName);

  /// Create a copy of WebsocketListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketUiModelImplCopyWith<_$WebsocketUiModelImpl> get copyWith =>
      __$$WebsocketUiModelImplCopyWithImpl<_$WebsocketUiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketUiModelImplToJson(
      this,
    );
  }
}

abstract class _WebsocketUiModel implements WebsocketListItemModel {
  const factory _WebsocketUiModel(
      {required final String id,
      required final SocketStatus status,
      required final List<String> classifications,
      required final bool test,
      required final DateTime start,
      required final String? ipAddress,
      required final String? server,
      required final String? appName}) = _$WebsocketUiModelImpl;

  factory _WebsocketUiModel.fromJson(Map<String, dynamic> json) =
      _$WebsocketUiModelImpl.fromJson;

  @override
  String get id;
  @override
  SocketStatus get status;
  @override
  List<String> get classifications;
  @override
  bool get test;
  @override
  DateTime get start;
  @override
  String? get ipAddress;
  @override
  String? get server;
  @override
  String? get appName;

  /// Create a copy of WebsocketListItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebsocketUiModelImplCopyWith<_$WebsocketUiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
