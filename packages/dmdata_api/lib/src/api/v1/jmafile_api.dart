import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'jmafile_api.g.dart';

@RestApi()
abstract class JmaFileDataApiClient {
  factory JmaFileDataApiClient(Dio dio, {String baseUrl}) = _JmaFileDataApiClient;

  /// 気象庁ファイル形式データを取得します。
  ///
  /// [id] - データを区別するSHA512のハッシュBASE64URLエンコードID
  /// [headers] - レスポンスに、ヘッダー情報のJSONを含めるかどうか
  @GET('/v1/{id}')
  Future<HttpResponse<dynamic>> getJmaFileData(
    @Path('id') String id, {
    @Query('headers') bool? headers,
  });
}
