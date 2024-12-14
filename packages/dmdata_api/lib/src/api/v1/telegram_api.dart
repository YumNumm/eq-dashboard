import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'telegram_api.g.dart';

@RestApi()
abstract class TelegramDataApiClient {
  factory TelegramDataApiClient(Dio dio, {String baseUrl}) =
      _TelegramDataApiClient;

  /// 電文本文を取得します。
  ///
  /// [id] - 電文を区別するユニーク384bitハッシュ
  @GET('/v1/{id}')
  Future<HttpResponse<dynamic>> getTelegramData(
    @Path('id') String id,
  );
}
