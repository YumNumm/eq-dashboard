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

    /// WebSocketの接続先
    @Default(DmdataWebsocketEndpoint.tokyoAndOsaka)
    DmdataWebsocketEndpoint endpoint,

    /// 自動接続
    @Default(true) bool autoConnect,

    /// テスト電文を受け取るかどうか
    /// XML電文以外のテスト配信はNO時にも配信されます。本文中を参照するようにしてください
    @Default(DmdataWebsocketIncludeTestTelegram.no)
    DmdataWebsocketIncludeTestTelegram includeTestTelegram,

    /// アプリケーション名
    @Default('EQDashboard')
    @Assert(
      'utf8.encode(appName).length <= 24',
      'appName must be less than 24 bytes',
    )
    String appName,
  }) = _DmdataWebSocketConfiguration;

  factory DmdataWebSocketConfiguration.fromJson(Map<String, dynamic> json) =>
      _$DmdataWebSocketConfigurationFromJson(json);
}

enum DmdataWebsocketEndpoint {
  tokyoAndOsaka('ws.api.dmdata.jp', 'Tokyo and Osaka'),
  tokyo('ws-tokyo.api.dmdata.jp', 'Tokyo Region'),
  tokyo001('ws001.api.dmdata.jp', 'AWS apne1-az4'),
  tokyo002('ws002.api.dmdata.jp', 'AWS apne1-az1'),
  osaka('ws-osaka.api.dmdata.jp', 'Osaka region'),
  osaka003('ws003.api.dmdata.jp', 'AWS apne3-az3'),
  osaka004('ws004.api.dmdata.jp', 'AWS apne3-az1'),
  ;

  const DmdataWebsocketEndpoint(this.host, this.name);

  final String host;
  final String name;
}

enum DmdataWebsocketIncludeTestTelegram {
  no,
  including,
  ;
}
