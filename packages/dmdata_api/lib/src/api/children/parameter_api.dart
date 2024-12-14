import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/parameter/earthquake_station.dart';
import 'package:dmdata_api/src/model/v2/parameter/realtime_station.dart';
import 'package:retrofit/retrofit.dart';

part 'parameter_api.g.dart';

@RestApi()
abstract class ParameterApiClient {
  factory ParameterApiClient(Dio dio, {String baseUrl}) = _ParameterApiClient;

  /// 震度観測地点における、名前・コード・位置情報などを取得します。
  @GET('/v2/parameter/earthquake/station')
  Future<EarthquakeStationResponse> getEarthquakeStation();

  /// リアルタイム震度観測点における、名前・コード・位置情報などを取得します。
  @GET('/v2/parameter/realtime/station')
  Future<RealtimeStationResponse> getRealtimeStation();
}
