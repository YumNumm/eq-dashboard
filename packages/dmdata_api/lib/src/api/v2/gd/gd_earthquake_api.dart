import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/gd/earthquake_event.dart';
import 'package:dmdata_api/src/model/v2/gd/earthquake_list.dart';
import 'package:retrofit/retrofit.dart';

part 'gd_earthquake_api.g.dart';

@RestApi()
abstract class GdEarthquakeApiClient {
  factory GdEarthquakeApiClient(Dio dio, {String baseUrl}) =
      _GdEarthquakeApiClient;

  /// 地震情報のリストを取得します。
  @GET('/v2/gd/earthquake')
  Future<EarthquakeListResponse> getEarthquakeList({
    /// 検索する震央地名コードの3桁の数字
    @Query('hypocenter') String? hypocenter,

    /// 検索する最大震度の下限
    @Query('maxInt') String? maxInt,

    /// 検索する地震波検知時刻の日付、時刻は無効
    @Query('date') String? date,

    /// 返す情報数を指定する。最大は100
    @Query('limit') int? limit,

    /// 次のページを取得するためのトークン
    /// 前回のリクエストで返された`nextToken`を指定する
    @Query('cursorToken') String? nextToken,
  });

  /// 地震情報の詳細を取得します。
  @GET('/v2/gd/earthquake/{eventId}')
  Future<EarthquakeEvent> getEarthquakeEvent(
    /// 地震情報のEventIDを指定
    @Path('eventId') String eventId,

    /// 次のページを取得するためのトークン
    /// 前回のリクエストで返された`nextToken`を指定する
    @Query('cursorToken') String? nextToken,
  );
}
