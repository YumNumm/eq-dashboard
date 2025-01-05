import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmdata_websocket_connection_parameter.freezed.dart';
part 'dmdata_websocket_connection_parameter.g.dart';

@freezed
class DmdataWebsocketConnectionParameter
    with _$DmdataWebsocketConnectionParameter {
  const factory DmdataWebsocketConnectionParameter({
    /// 取得したいデータのフォーマットを指定
    /// `raw`または`json`を指定
    @Assert(
      'format == "raw" || format == "json"',
      'formatは"raw"または"json"でなければなりません',
    )
    @Default('raw')
    String format,

    /// アプリケーション名を指定
    /// 最大24byteまで
    @Assert('appName.length <= 24', 'appNameの長さは24byte以下でなければなりません')
    String? appName,
  }) = _DmdataWebsocketConnectionParameter;

  factory DmdataWebsocketConnectionParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DmdataWebsocketConnectionParameterFromJson(json);
}
