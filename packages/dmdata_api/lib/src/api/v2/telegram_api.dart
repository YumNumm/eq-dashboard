import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/telegram/telegram_list.dart';
import 'package:retrofit/retrofit.dart';

part 'telegram_api.g.dart';

@RestApi()
abstract class TelegramApiClient {
  factory TelegramApiClient(Dio dio, {String baseUrl}) = _TelegramApiClient;

  /// 電文リストを取得します。
  @GET('/v2/telegram')
  Future<TelegramListResponse> getTelegramList({
    /// データ種類コードを指定。1つのみの場合は前方一致で検索する
    /// カンマで区切り、複数のデータ種類コード指定できる。その場合は完全一致の必要があり最大5つまで
    @Query('type') String? type,

    /// XML電文に出現する、/Report/Control及び/Report/Head情報を表示するか指定する
    @Query('xmlReport') bool? xmlReport,

    /// 訓練、試験等のテスト等電文を表示するか指定する
    /// including: テスト等電文を含む、only: テスト等電文のみ
    @Query('test') String? test,

    /// データフォーマットの指定。
    /// 生電文: raw、JSON化データ: json
    @Query('formatMode') String? formatMode,

    /// 日時による絞り込みを行う。
    /// 形式は、`2021-05-01T00:00:00~2021-06-01T00:00:00` のようにし、`~`で日付の範囲を区切る
    /// 左辺を開始日時とし、右辺を終了日時（その時刻を含まない）
    /// 検索の対象は受信時刻となり、左辺または右辺どちらかがなくてもよい
    @Query('datetime') String? datetime,

    /// 次のリソースを取得する。レスポンス内のnextTokenまたはnextPoolingの値を指定する
    @Query('cursorToken') String? cursorToken,

    /// 返す電文数を指定する。最大は100
    @Query('limit') int? limit,

    /// 次のページを取得するためのトークン
    /// 前回のリクエストで返された`nextToken`を指定する
    @Query('cursorToken') String? nextToken,
  });
}
