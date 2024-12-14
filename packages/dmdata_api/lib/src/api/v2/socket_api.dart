import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/socket/socket_list.dart';
import 'package:dmdata_api/src/model/v2/socket/socket_start.dart';
import 'package:retrofit/retrofit.dart';

part 'socket_api.g.dart';

@RestApi()
abstract class SocketApiClient {
  factory SocketApiClient(Dio dio, {String baseUrl}) = _SocketApiClient;

  /// WebSocketに接続する場合のアクセスURLを取得します。
  @POST('/v2/socket')
  Future<SocketStartResponse> startSocket(@Body() Map<String, dynamic> body);

  /// WebSocketのリストを取得します。
  @GET('/v2/socket')
  Future<SocketListResponse> getSocketList({
    /// WebSocket IDを指定、指定された場合他のクエリパラメータは無視される
    @Query('id') int? id,

    /// WebSocketの状態。デフォルトではすべて表示
    /// 接続待機・期限切れ: waiting、接続中: open、接続終了: closed
    @Query('status') String? status,

    /// 次のリソースを取得する。レスポンス内のnextTokenの値を指定する
    @Query('cursorToken') String? cursorToken,

    /// アイテムの数。���大100まで
    @Query('limit') int? limit,
  });

  /// WebSocketを終了します。
  @DELETE('/v2/socket/{id}')
  Future<void> closeSocket(
    /// WebSocket IDを指定
    @Path('id') int id,
  );
}
