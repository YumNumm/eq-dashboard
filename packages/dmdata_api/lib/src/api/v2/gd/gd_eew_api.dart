import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/gd/eew_event.dart';
import 'package:dmdata_api/src/model/v2/gd/eew_list.dart';
import 'package:retrofit/retrofit.dart';

part 'gd_eew_api.g.dart';

@RestApi()
abstract class GdEewApiClient {
  factory GdEewApiClient(Dio dio, {String baseUrl}) = _GdEewApiClient;

  /// 過去に発表された緊急地震速報のリストを取得します。
  @GET('/v2/gd/eew')
  Future<EewListResponse> getEewList({
    /// 最終報発表日時による絞り込みを行う
    /// 形式は、`2021-05-01T00:00:00~2021-06-01T00:00:00` のようにし、`~`で日付の範囲を区切る
    /// 左辺を開始日時とし、右辺を終了日時（その時刻を含まない）
    /// 検索の対象は受信時刻となり、左辺または右辺どちらかがなくてもよい
    @Query('datetime') String? datetime,

    /// 返す情報数を指定する。最大は100
    @Query('limit') int? limit,

    /// 次のページを取得するためのトークン
    /// 前回のリクエストで返された`nextToken`を指定する
    @Query('cursorToken') String? nextToken,
  });

  /// 緊急地震速報のすべての報のリストを取得します。
  @GET('/v2/gd/eew/{eventId}')
  Future<EewEventResponse> getEewEvent(
    /// 緊急地震速報のEventIDを指定
    @Path('eventId') String eventId,

    /// 次のページを取得するためのトークン
    /// 前回のリクエストで返された`nextToken`を指定する
    @Query('cursorToken') String? nextToken,
  );
}
