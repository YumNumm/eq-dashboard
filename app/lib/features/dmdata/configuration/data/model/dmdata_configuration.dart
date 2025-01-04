import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmdata_configuration.freezed.dart';
part 'dmdata_configuration.g.dart';

@freezed
class DmdataConfiguration with _$DmdataConfiguration {
  const factory DmdataConfiguration({
    required DmdataPollingConfiguration polling,
    required DmdataWebSocketConfiguration webSocket,
  }) = _DmdataConfiguration;

  factory DmdataConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DmdataConfigurationFromJson(json);
}

@freezed
class DmdataPollingConfiguration with _$DmdataPollingConfiguration {
  const factory DmdataPollingConfiguration({
    @Default(Duration(seconds: 10))
    @Assert(
      'earthquakeListFetchInterval.inSeconds > 5',
      'earthquakeListFetchInterval must be greater than 5 seconds',
    )
    Duration earthquakeListFetchInterval,
  }) = _DmdataPollingConfiguration;

  factory DmdataPollingConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DmdataPollingConfigurationFromJson(json);
}

@freezed
class DmdataWebSocketConfiguration with _$DmdataWebSocketConfiguration {
  const factory DmdataWebSocketConfiguration({
    /// Pingの間隔
    @Default(Duration(seconds: 10))
    @Assert(
      'pingInterval.inSeconds > 5',
      'pingInterval must be greater than 5 seconds',
    )
    Duration pingInterval,

    /// 接続タイムアウト
    @Default(Duration(seconds: 10)) Duration connectionTimeout,
  }) = _DmdataWebSocketConfiguration;

  factory DmdataWebSocketConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DmdataWebSocketConfigurationFromJson(json);
}
