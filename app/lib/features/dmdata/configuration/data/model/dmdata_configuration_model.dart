import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmdata_configuration_model.freezed.dart';
part 'dmdata_configuration_model.g.dart';

@freezed
class DmdataConfigurationModel with _$DmdataConfigurationModel {
  const factory DmdataConfigurationModel({
    required DmdataPollingConfiguration polling,
    required DmdataWebSocketConfiguration webSocket,
  }) = _DmdataConfigurationModel;

  factory DmdataConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$DmdataConfigurationModelFromJson(json);
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

    /// 接続数に余りがない場合に、他の接続を切断し強制的に接続するかどうか
    @Default(false) bool forceDisconnectOtherConnectionWhenFull,
  }) = _DmdataWebSocketConfiguration;

  factory DmdataWebSocketConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DmdataWebSocketConfigurationFromJson(json);
}
