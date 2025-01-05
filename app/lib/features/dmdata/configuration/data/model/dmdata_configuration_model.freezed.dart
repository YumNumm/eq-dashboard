// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dmdata_configuration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DmdataConfigurationModel _$DmdataConfigurationModelFromJson(
    Map<String, dynamic> json) {
  return _DmdataConfigurationModel.fromJson(json);
}

/// @nodoc
mixin _$DmdataConfigurationModel {
  DmdataPollingConfiguration get polling => throw _privateConstructorUsedError;
  DmdataWebSocketConfiguration get webSocket =>
      throw _privateConstructorUsedError;

  /// Serializes this DmdataConfigurationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DmdataConfigurationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DmdataConfigurationModelCopyWith<DmdataConfigurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmdataConfigurationModelCopyWith<$Res> {
  factory $DmdataConfigurationModelCopyWith(DmdataConfigurationModel value,
          $Res Function(DmdataConfigurationModel) then) =
      _$DmdataConfigurationModelCopyWithImpl<$Res, DmdataConfigurationModel>;
  @useResult
  $Res call(
      {DmdataPollingConfiguration polling,
      DmdataWebSocketConfiguration webSocket});

  $DmdataPollingConfigurationCopyWith<$Res> get polling;
  $DmdataWebSocketConfigurationCopyWith<$Res> get webSocket;
}

/// @nodoc
class _$DmdataConfigurationModelCopyWithImpl<$Res,
        $Val extends DmdataConfigurationModel>
    implements $DmdataConfigurationModelCopyWith<$Res> {
  _$DmdataConfigurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DmdataConfigurationModel
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

  /// Create a copy of DmdataConfigurationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DmdataPollingConfigurationCopyWith<$Res> get polling {
    return $DmdataPollingConfigurationCopyWith<$Res>(_value.polling, (value) {
      return _then(_value.copyWith(polling: value) as $Val);
    });
  }

  /// Create a copy of DmdataConfigurationModel
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
abstract class _$$DmdataConfigurationModelImplCopyWith<$Res>
    implements $DmdataConfigurationModelCopyWith<$Res> {
  factory _$$DmdataConfigurationModelImplCopyWith(
          _$DmdataConfigurationModelImpl value,
          $Res Function(_$DmdataConfigurationModelImpl) then) =
      __$$DmdataConfigurationModelImplCopyWithImpl<$Res>;
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
class __$$DmdataConfigurationModelImplCopyWithImpl<$Res>
    extends _$DmdataConfigurationModelCopyWithImpl<$Res,
        _$DmdataConfigurationModelImpl>
    implements _$$DmdataConfigurationModelImplCopyWith<$Res> {
  __$$DmdataConfigurationModelImplCopyWithImpl(
      _$DmdataConfigurationModelImpl _value,
      $Res Function(_$DmdataConfigurationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DmdataConfigurationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? polling = null,
    Object? webSocket = null,
  }) {
    return _then(_$DmdataConfigurationModelImpl(
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
class _$DmdataConfigurationModelImpl implements _DmdataConfigurationModel {
  const _$DmdataConfigurationModelImpl(
      {required this.polling, required this.webSocket});

  factory _$DmdataConfigurationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DmdataConfigurationModelImplFromJson(json);

  @override
  final DmdataPollingConfiguration polling;
  @override
  final DmdataWebSocketConfiguration webSocket;

  @override
  String toString() {
    return 'DmdataConfigurationModel(polling: $polling, webSocket: $webSocket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataConfigurationModelImpl &&
            (identical(other.polling, polling) || other.polling == polling) &&
            (identical(other.webSocket, webSocket) ||
                other.webSocket == webSocket));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, polling, webSocket);

  /// Create a copy of DmdataConfigurationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DmdataConfigurationModelImplCopyWith<_$DmdataConfigurationModelImpl>
      get copyWith => __$$DmdataConfigurationModelImplCopyWithImpl<
          _$DmdataConfigurationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DmdataConfigurationModelImplToJson(
      this,
    );
  }
}

abstract class _DmdataConfigurationModel implements DmdataConfigurationModel {
  const factory _DmdataConfigurationModel(
          {required final DmdataPollingConfiguration polling,
          required final DmdataWebSocketConfiguration webSocket}) =
      _$DmdataConfigurationModelImpl;

  factory _DmdataConfigurationModel.fromJson(Map<String, dynamic> json) =
      _$DmdataConfigurationModelImpl.fromJson;

  @override
  DmdataPollingConfiguration get polling;
  @override
  DmdataWebSocketConfiguration get webSocket;

  /// Create a copy of DmdataConfigurationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataConfigurationModelImplCopyWith<_$DmdataConfigurationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// 接続数に余りがない場合に、他の接続を切断し強制的に接続するかどうか
  bool get forceDisconnectOtherConnectionWhenFull =>
      throw _privateConstructorUsedError;

  /// WebSocketの接続先
  DmdataWebsocketEndpoint get endpoint => throw _privateConstructorUsedError;

  /// 自動接続
  bool get autoConnect => throw _privateConstructorUsedError;

  /// テスト電文を受け取るかどうか
  /// XML電文以外のテスト配信はNO時にも配信されます。本文中を参照するようにしてください
  DmdataWebsocketIncludeTestTelegram get includeTestTelegram =>
      throw _privateConstructorUsedError;

  /// アプリケーション名
  @Assert(
      'utf8.encode(appName).length <= 24', 'appName must be less than 24 bytes')
  String get appName => throw _privateConstructorUsedError;

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
      Duration connectionTimeout,
      bool forceDisconnectOtherConnectionWhenFull,
      DmdataWebsocketEndpoint endpoint,
      bool autoConnect,
      DmdataWebsocketIncludeTestTelegram includeTestTelegram,
      @Assert('utf8.encode(appName).length <= 24',
          'appName must be less than 24 bytes')
      String appName});
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
    Object? forceDisconnectOtherConnectionWhenFull = null,
    Object? endpoint = null,
    Object? autoConnect = null,
    Object? includeTestTelegram = null,
    Object? appName = null,
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
      forceDisconnectOtherConnectionWhenFull: null ==
              forceDisconnectOtherConnectionWhenFull
          ? _value.forceDisconnectOtherConnectionWhenFull
          : forceDisconnectOtherConnectionWhenFull // ignore: cast_nullable_to_non_nullable
              as bool,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as DmdataWebsocketEndpoint,
      autoConnect: null == autoConnect
          ? _value.autoConnect
          : autoConnect // ignore: cast_nullable_to_non_nullable
              as bool,
      includeTestTelegram: null == includeTestTelegram
          ? _value.includeTestTelegram
          : includeTestTelegram // ignore: cast_nullable_to_non_nullable
              as DmdataWebsocketIncludeTestTelegram,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
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
      Duration connectionTimeout,
      bool forceDisconnectOtherConnectionWhenFull,
      DmdataWebsocketEndpoint endpoint,
      bool autoConnect,
      DmdataWebsocketIncludeTestTelegram includeTestTelegram,
      @Assert('utf8.encode(appName).length <= 24',
          'appName must be less than 24 bytes')
      String appName});
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
    Object? forceDisconnectOtherConnectionWhenFull = null,
    Object? endpoint = null,
    Object? autoConnect = null,
    Object? includeTestTelegram = null,
    Object? appName = null,
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
      forceDisconnectOtherConnectionWhenFull: null ==
              forceDisconnectOtherConnectionWhenFull
          ? _value.forceDisconnectOtherConnectionWhenFull
          : forceDisconnectOtherConnectionWhenFull // ignore: cast_nullable_to_non_nullable
              as bool,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as DmdataWebsocketEndpoint,
      autoConnect: null == autoConnect
          ? _value.autoConnect
          : autoConnect // ignore: cast_nullable_to_non_nullable
              as bool,
      includeTestTelegram: null == includeTestTelegram
          ? _value.includeTestTelegram
          : includeTestTelegram // ignore: cast_nullable_to_non_nullable
              as DmdataWebsocketIncludeTestTelegram,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
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
      this.connectionTimeout = const Duration(seconds: 10),
      this.forceDisconnectOtherConnectionWhenFull = false,
      this.endpoint = DmdataWebsocketEndpoint.tokyoAndOsaka,
      this.autoConnect = true,
      this.includeTestTelegram = DmdataWebsocketIncludeTestTelegram.no,
      @Assert('utf8.encode(appName).length <= 24',
          'appName must be less than 24 bytes')
      this.appName = 'EQDashboard'});

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

  /// 接続数に余りがない場合に、他の接続を切断し強制的に接続するかどうか
  @override
  @JsonKey()
  final bool forceDisconnectOtherConnectionWhenFull;

  /// WebSocketの接続先
  @override
  @JsonKey()
  final DmdataWebsocketEndpoint endpoint;

  /// 自動接続
  @override
  @JsonKey()
  final bool autoConnect;

  /// テスト電文を受け取るかどうか
  /// XML電文以外のテスト配信はNO時にも配信されます。本文中を参照するようにしてください
  @override
  @JsonKey()
  final DmdataWebsocketIncludeTestTelegram includeTestTelegram;

  /// アプリケーション名
  @override
  @JsonKey()
  @Assert(
      'utf8.encode(appName).length <= 24', 'appName must be less than 24 bytes')
  final String appName;

  @override
  String toString() {
    return 'DmdataWebSocketConfiguration(pingInterval: $pingInterval, connectionTimeout: $connectionTimeout, forceDisconnectOtherConnectionWhenFull: $forceDisconnectOtherConnectionWhenFull, endpoint: $endpoint, autoConnect: $autoConnect, includeTestTelegram: $includeTestTelegram, appName: $appName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DmdataWebSocketConfigurationImpl &&
            (identical(other.pingInterval, pingInterval) ||
                other.pingInterval == pingInterval) &&
            (identical(other.connectionTimeout, connectionTimeout) ||
                other.connectionTimeout == connectionTimeout) &&
            (identical(other.forceDisconnectOtherConnectionWhenFull,
                    forceDisconnectOtherConnectionWhenFull) ||
                other.forceDisconnectOtherConnectionWhenFull ==
                    forceDisconnectOtherConnectionWhenFull) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.autoConnect, autoConnect) ||
                other.autoConnect == autoConnect) &&
            (identical(other.includeTestTelegram, includeTestTelegram) ||
                other.includeTestTelegram == includeTestTelegram) &&
            (identical(other.appName, appName) || other.appName == appName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pingInterval,
      connectionTimeout,
      forceDisconnectOtherConnectionWhenFull,
      endpoint,
      autoConnect,
      includeTestTelegram,
      appName);

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
      final Duration connectionTimeout,
      final bool forceDisconnectOtherConnectionWhenFull,
      final DmdataWebsocketEndpoint endpoint,
      final bool autoConnect,
      final DmdataWebsocketIncludeTestTelegram includeTestTelegram,
      @Assert('utf8.encode(appName).length <= 24',
          'appName must be less than 24 bytes')
      final String appName}) = _$DmdataWebSocketConfigurationImpl;

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

  /// 接続数に余りがない場合に、他の接続を切断し強制的に接続するかどうか
  @override
  bool get forceDisconnectOtherConnectionWhenFull;

  /// WebSocketの接続先
  @override
  DmdataWebsocketEndpoint get endpoint;

  /// 自動接続
  @override
  bool get autoConnect;

  /// テスト電文を受け取るかどうか
  /// XML電文以外のテスト配信はNO時にも配信されます。本文中を参照するようにしてください
  @override
  DmdataWebsocketIncludeTestTelegram get includeTestTelegram;

  /// アプリケーション名
  @override
  @Assert(
      'utf8.encode(appName).length <= 24', 'appName must be less than 24 bytes')
  String get appName;

  /// Create a copy of DmdataWebSocketConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DmdataWebSocketConfigurationImplCopyWith<
          _$DmdataWebSocketConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
