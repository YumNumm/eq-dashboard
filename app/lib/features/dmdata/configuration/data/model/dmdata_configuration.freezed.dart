// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmdata_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DmdataConfiguration _$DmdataConfigurationFromJson(Map<String, dynamic> json) {
  return _DmdataConfiguration.fromJson(json);
}

/// @nodoc
mixin _$DmdataConfiguration {
  DmdataPollingConfiguration get polling => throw _privateConstructorUsedError;
  DmdataWebSocketConfiguration get webSocket =>
      throw _privateConstructorUsedError;

  /// Serializes this DmdataConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataConfigurationCopyWith<DmdataConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataConfigurationCopyWith<$Res> {
  factory $DmdataConfigurationCopyWith(
          DmdataConfiguration value, $Res Function(DmdataConfiguration) then) =
      _$DmdataConfigurationCopyWithImpl<$Res, DmdataConfiguration>;
  @useResult
  $Res call(
      {DmdataPollingConfiguration polling,
      DmdataWebSocketConfiguration webSocket});

  $DmdataPollingConfigurationCopyWith<$Res> get polling;
  $DmdataWebSocketConfigurationCopyWith<$Res> get webSocket;
}

/// @nodoc
class _$DmdataConfigurationCopyWithImpl<$Res, $Val extends DmdataConfiguration>
    implements $DmdataConfigurationCopyWith<$Res> {
  _$DmdataConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polling = null,
    Object? webSocket = null,
  }) {
    return _then(_value.copyWith(
      polling: null == polling
          ? _value.polling
          : polling // ignore: cast_nullable_to_non_nullable
              as DmdataPollingConfiguration,
      webSocket: null == webSocket
          ? _value.webSocket
          : webSocket // ignore: cast_nullable_to_non_nullable
              as DmdataWebSocketConfiguration,
    ) as $Val);
  }

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DmdataPollingConfigurationCopyWith<$Res> get polling {
    return $DmdataPollingConfigurationCopyWith<$Res>(_value.polling, (value) {
      return _then(_value.copyWith(polling: value) as $Val);
    });
  }

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DmdataWebSocketConfigurationCopyWith<$Res> get webSocket {
    return $DmdataWebSocketConfigurationCopyWith<$Res>(_value.webSocket,
        (value) {
      return _then(_value.copyWith(webSocket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DmdataConfigurationImplCopyWith<$Res>
    implements $DmdataConfigurationCopyWith<$Res> {
  factory _$$DmdataConfigurationImplCopyWith(_$DmdataConfigurationImpl value,
          $Res Function(_$DmdataConfigurationImpl) then) =
      __$$DmdataConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DmdataPollingConfiguration polling,
      DmdataWebSocketConfiguration webSocket});

  @override
  $DmdataPollingConfigurationCopyWith<$Res> get polling;
  @override
  $DmdataWebSocketConfigurationCopyWith<$Res> get webSocket;
}

/// @nodoc
class __$$DmdataConfigurationImplCopyWithImpl<$Res>
    extends _$DmdataConfigurationCopyWithImpl<$Res, _$DmdataConfigurationImpl>
    implements _$$DmdataConfigurationImplCopyWith<$Res> {
  __$$DmdataConfigurationImplCopyWithImpl(_$DmdataConfigurationImpl _value,
      $Res Function(_$DmdataConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polling = null,
    Object? webSocket = null,
  }) {
    return _then(_$DmdataConfigurationImpl(
      polling: null == polling
          ? _value.polling
          : polling // ignore: cast_nullable_to_non_nullable
              as DmdataPollingConfiguration,
      webSocket: null == webSocket
          ? _value.webSocket
          : webSocket // ignore: cast_nullable_to_non_nullable
              as DmdataWebSocketConfiguration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DmdataConfigurationImpl implements _DmdataConfiguration {
  const _$DmdataConfigurationImpl(
      {required this.polling, required this.webSocket});

  factory _$DmdataConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DmdataConfigurationImplFromJson(json);

  @override
  final DmdataPollingConfiguration polling;
  @override
  final DmdataWebSocketConfiguration webSocket;

  @override
  String toString() {
    return 'DmdataConfiguration(polling: $polling, webSocket: $webSocket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataConfigurationImpl &&
            (identical(other.polling, polling) || other.polling == polling) &&
            (identical(other.webSocket, webSocket) ||
                other.webSocket == webSocket));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, polling, webSocket);

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataConfigurationImplCopyWith<_$DmdataConfigurationImpl> get copyWith =>
      __$$DmdataConfigurationImplCopyWithImpl<_$DmdataConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataConfigurationImplToJson(
      this,
    );
  }
}

abstract class _DmdataConfiguration implements DmdataConfiguration {
  const factory _DmdataConfiguration(
          {required final DmdataPollingConfiguration polling,
          required final DmdataWebSocketConfiguration webSocket}) =
      _$DmdataConfigurationImpl;

  factory _DmdataConfiguration.fromJson(Map<String, dynamic> json) =
      _$DmdataConfigurationImpl.fromJson;

  @override
  DmdataPollingConfiguration get polling;
  @override
  DmdataWebSocketConfiguration get webSocket;

  /// Create a copy of DmdataConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataConfigurationImplCopyWith<_$DmdataConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DmdataPollingConfiguration _$DmdataPollingConfigurationFromJson(
    Map<String, dynamic> json) {
  return _DmdataPollingConfiguration.fromJson(json);
}

/// @nodoc
mixin _$DmdataPollingConfiguration {
  @Assert('earthquakeListFetchInterval.inSeconds > 5',
      'earthquakeListFetchInterval must be greater than 5 seconds')
  Duration get earthquakeListFetchInterval =>
      throw _privateConstructorUsedError;

  /// Serializes this DmdataPollingConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataPollingConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataPollingConfigurationCopyWith<DmdataPollingConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataPollingConfigurationCopyWith<$Res> {
  factory $DmdataPollingConfigurationCopyWith(DmdataPollingConfiguration value,
          $Res Function(DmdataPollingConfiguration) then) =
      _$DmdataPollingConfigurationCopyWithImpl<$Res,
          DmdataPollingConfiguration>;
  @useResult
  $Res call(
      {@Assert('earthquakeListFetchInterval.inSeconds > 5',
          'earthquakeListFetchInterval must be greater than 5 seconds')
      Duration earthquakeListFetchInterval});
}

/// @nodoc
class _$DmdataPollingConfigurationCopyWithImpl<$Res,
        $Val extends DmdataPollingConfiguration>
    implements $DmdataPollingConfigurationCopyWith<$Res> {
  _$DmdataPollingConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataPollingConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earthquakeListFetchInterval = null,
  }) {
    return _then(_value.copyWith(
      earthquakeListFetchInterval: null == earthquakeListFetchInterval
          ? _value.earthquakeListFetchInterval
          : earthquakeListFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DmdataPollingConfigurationImplCopyWith<$Res>
    implements $DmdataPollingConfigurationCopyWith<$Res> {
  factory _$$DmdataPollingConfigurationImplCopyWith(
          _$DmdataPollingConfigurationImpl value,
          $Res Function(_$DmdataPollingConfigurationImpl) then) =
      __$$DmdataPollingConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert('earthquakeListFetchInterval.inSeconds > 5',
          'earthquakeListFetchInterval must be greater than 5 seconds')
      Duration earthquakeListFetchInterval});
}

/// @nodoc
class __$$DmdataPollingConfigurationImplCopyWithImpl<$Res>
    extends _$DmdataPollingConfigurationCopyWithImpl<$Res,
        _$DmdataPollingConfigurationImpl>
    implements _$$DmdataPollingConfigurationImplCopyWith<$Res> {
  __$$DmdataPollingConfigurationImplCopyWithImpl(
      _$DmdataPollingConfigurationImpl _value,
      $Res Function(_$DmdataPollingConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataPollingConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earthquakeListFetchInterval = null,
  }) {
    return _then(_$DmdataPollingConfigurationImpl(
      earthquakeListFetchInterval: null == earthquakeListFetchInterval
          ? _value.earthquakeListFetchInterval
          : earthquakeListFetchInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DmdataPollingConfigurationImpl implements _DmdataPollingConfiguration {
  const _$DmdataPollingConfigurationImpl(
      {@Assert('earthquakeListFetchInterval.inSeconds > 5',
          'earthquakeListFetchInterval must be greater than 5 seconds')
      this.earthquakeListFetchInterval = const Duration(seconds: 10)});

  factory _$DmdataPollingConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DmdataPollingConfigurationImplFromJson(json);

  @override
  @JsonKey()
  @Assert('earthquakeListFetchInterval.inSeconds > 5',
      'earthquakeListFetchInterval must be greater than 5 seconds')
  final Duration earthquakeListFetchInterval;

  @override
  String toString() {
    return 'DmdataPollingConfiguration(earthquakeListFetchInterval: $earthquakeListFetchInterval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataPollingConfigurationImpl &&
            (identical(other.earthquakeListFetchInterval,
                    earthquakeListFetchInterval) ||
                other.earthquakeListFetchInterval ==
                    earthquakeListFetchInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, earthquakeListFetchInterval);

  /// Create a copy of DmdataPollingConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataPollingConfigurationImplCopyWith<_$DmdataPollingConfigurationImpl>
      get copyWith => __$$DmdataPollingConfigurationImplCopyWithImpl<
          _$DmdataPollingConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataPollingConfigurationImplToJson(
      this,
    );
  }
}

abstract class _DmdataPollingConfiguration
    implements DmdataPollingConfiguration {
  const factory _DmdataPollingConfiguration(
          {@Assert('earthquakeListFetchInterval.inSeconds > 5',
              'earthquakeListFetchInterval must be greater than 5 seconds')
          final Duration earthquakeListFetchInterval}) =
      _$DmdataPollingConfigurationImpl;

  factory _DmdataPollingConfiguration.fromJson(Map<String, dynamic> json) =
      _$DmdataPollingConfigurationImpl.fromJson;

  @override
  @Assert('earthquakeListFetchInterval.inSeconds > 5',
      'earthquakeListFetchInterval must be greater than 5 seconds')
  Duration get earthquakeListFetchInterval;

  /// Create a copy of DmdataPollingConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataPollingConfigurationImplCopyWith<_$DmdataPollingConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DmdataWebSocketConfiguration _$DmdataWebSocketConfigurationFromJson(
    Map<String, dynamic> json) {
  return _DmdataWebSocketConfiguration.fromJson(json);
}

/// @nodoc
mixin _$DmdataWebSocketConfiguration {
  /// Pingの間隔
  @Assert('pingInterval.inSeconds > 5',
      'pingInterval must be greater than 5 seconds')
  Duration get pingInterval => throw _privateConstructorUsedError;

  /// 接続タイムアウト
  Duration get connectionTimeout => throw _privateConstructorUsedError;

  /// Serializes this DmdataWebSocketConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataWebSocketConfigurationCopyWith<DmdataWebSocketConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataWebSocketConfigurationCopyWith<$Res> {
  factory $DmdataWebSocketConfigurationCopyWith(
          DmdataWebSocketConfiguration value,
          $Res Function(DmdataWebSocketConfiguration) then) =
      _$DmdataWebSocketConfigurationCopyWithImpl<$Res,
          DmdataWebSocketConfiguration>;
  @useResult
  $Res call(
      {@Assert('pingInterval.inSeconds > 5',
          'pingInterval must be greater than 5 seconds')
      Duration pingInterval,
      Duration connectionTimeout});
}

/// @nodoc
class _$DmdataWebSocketConfigurationCopyWithImpl<$Res,
        $Val extends DmdataWebSocketConfiguration>
    implements $DmdataWebSocketConfigurationCopyWith<$Res> {
  _$DmdataWebSocketConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pingInterval = null,
    Object? connectionTimeout = null,
  }) {
    return _then(_value.copyWith(
      pingInterval: null == pingInterval
          ? _value.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      connectionTimeout: null == connectionTimeout
          ? _value.connectionTimeout
          : connectionTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DmdataWebSocketConfigurationImplCopyWith<$Res>
    implements $DmdataWebSocketConfigurationCopyWith<$Res> {
  factory _$$DmdataWebSocketConfigurationImplCopyWith(
          _$DmdataWebSocketConfigurationImpl value,
          $Res Function(_$DmdataWebSocketConfigurationImpl) then) =
      __$$DmdataWebSocketConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert('pingInterval.inSeconds > 5',
          'pingInterval must be greater than 5 seconds')
      Duration pingInterval,
      Duration connectionTimeout});
}

/// @nodoc
class __$$DmdataWebSocketConfigurationImplCopyWithImpl<$Res>
    extends _$DmdataWebSocketConfigurationCopyWithImpl<$Res,
        _$DmdataWebSocketConfigurationImpl>
    implements _$$DmdataWebSocketConfigurationImplCopyWith<$Res> {
  __$$DmdataWebSocketConfigurationImplCopyWithImpl(
      _$DmdataWebSocketConfigurationImpl _value,
      $Res Function(_$DmdataWebSocketConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pingInterval = null,
    Object? connectionTimeout = null,
  }) {
    return _then(_$DmdataWebSocketConfigurationImpl(
      pingInterval: null == pingInterval
          ? _value.pingInterval
          : pingInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      connectionTimeout: null == connectionTimeout
          ? _value.connectionTimeout
          : connectionTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DmdataWebSocketConfigurationImpl
    implements _DmdataWebSocketConfiguration {
  const _$DmdataWebSocketConfigurationImpl(
      {@Assert('pingInterval.inSeconds > 5',
          'pingInterval must be greater than 5 seconds')
      this.pingInterval = const Duration(seconds: 10),
      this.connectionTimeout = const Duration(seconds: 10)});

  factory _$DmdataWebSocketConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DmdataWebSocketConfigurationImplFromJson(json);

  /// Pingの間隔
  @override
  @JsonKey()
  @Assert('pingInterval.inSeconds > 5',
      'pingInterval must be greater than 5 seconds')
  final Duration pingInterval;

  /// 接続タイムアウト
  @override
  @JsonKey()
  final Duration connectionTimeout;

  @override
  String toString() {
    return 'DmdataWebSocketConfiguration(pingInterval: $pingInterval, connectionTimeout: $connectionTimeout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataWebSocketConfigurationImpl &&
            (identical(other.pingInterval, pingInterval) ||
                other.pingInterval == pingInterval) &&
            (identical(other.connectionTimeout, connectionTimeout) ||
                other.connectionTimeout == connectionTimeout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pingInterval, connectionTimeout);

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataWebSocketConfigurationImplCopyWith<
          _$DmdataWebSocketConfigurationImpl>
      get copyWith => __$$DmdataWebSocketConfigurationImplCopyWithImpl<
          _$DmdataWebSocketConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataWebSocketConfigurationImplToJson(
      this,
    );
  }
}

abstract class _DmdataWebSocketConfiguration
    implements DmdataWebSocketConfiguration {
  const factory _DmdataWebSocketConfiguration(
      {@Assert('pingInterval.inSeconds > 5',
          'pingInterval must be greater than 5 seconds')
      final Duration pingInterval,
      final Duration connectionTimeout}) = _$DmdataWebSocketConfigurationImpl;

  factory _DmdataWebSocketConfiguration.fromJson(Map<String, dynamic> json) =
      _$DmdataWebSocketConfigurationImpl.fromJson;

  /// Pingの間隔
  @override
  @Assert('pingInterval.inSeconds > 5',
      'pingInterval must be greater than 5 seconds')
  Duration get pingInterval;

  /// 接続タイムアウト
  @override
  Duration get connectionTimeout;

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataWebSocketConfigurationImplCopyWith<
          _$DmdataWebSocketConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
