import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_list.freezed.dart';
part 'telegram_list.g.dart';

/// 気象庁電文リストのレスポンス
@freezed
class TelegramListResponse
    with _$TelegramListResponse
    implements DmdataResponse {
  const factory TelegramListResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// 電文情報リスト
    required List<TelegramListItem> items,

    /// PuLL時に使用する
    required String nextPooling,

    /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
    required int nextPoolingInterval,

    /// 次のリソースがある場合に出現
    String? nextToken,
  }) = _TelegramListResponse;

  factory TelegramListResponse.fromJson(Map<String, dynamic> json) =>
      _$TelegramListResponseFromJson(json);
}

/// 電��情報
@freezed
class TelegramListItem with _$TelegramListItem {
  const factory TelegramListItem({
    /// 電文受信通番
    required dynamic serial,

    /// 配信区分により変化。取りうる値は telegram.earthquake, telegram.volcano, telegram.weather, telegram.scheduled
    required String classification,

    /// データを区別するSHA512のハッシュBASE64URLエンコードID
    required String id,

    /// ヘッダ情報
    required TelegramHead head,

    /// 受信時刻
    required String receivedTime,

    /// bodyフィールドの表現形式を示す
    /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
    required String format,

    /// データURL
    required String url,

    /// XML電文Control,Head情報
    XmlReport? xmlReport,
  }) = _TelegramListItem;

  factory TelegramListItem.fromJson(Map<String, dynamic> json) =>
      _$TelegramListItemFromJson(json);
}

/// ヘッダ情報
@freezed
class TelegramHead with _$TelegramHead {
  const factory TelegramHead({
    /// データ種類コード
    required String type,

    /// 発表英字官署名
    required String author,

    /// 基点時刻
    required String time,

    /// 訓練、試験等のテスト等電文���どうかを示す
    required bool test,

    /// 対象観測地点コード
    String? target,

    /// 指示コード
    String? designation,
  }) = _TelegramHead;

  factory TelegramHead.fromJson(Map<String, dynamic> json) =>
      _$TelegramHeadFromJson(json);
}

/// XML電文Control,Head情報
@freezed
class XmlReport with _$XmlReport {
  const factory XmlReport({
    /// Control部
    required Control control,

    /// Head部
    required Head head,
  }) = _XmlReport;

  factory XmlReport.fromJson(Map<String, dynamic> json) =>
      _$XmlReportFromJson(json);
}

/// Control部
@freezed
class Control with _$Control {
  const factory Control({
    /// 標題
    required String title,

    /// 運用種別
    required String status,

    /// 編集官署名
    required String editorialOffice,

    /// 発表官署名
    required String publishingOffice,

    /// 基点時刻
    required String dateTime,
  }) = _Control;

  factory Control.fromJson(Map<String, dynamic> json) =>
      _$ControlFromJson(json);
}

/// Head部
@freezed
class Head with _$Head {
  const factory Head({
    /// 標題
    required String title,

    /// 情報形態
    required String infoType,

    /// スキーマの運用種別情報
    required String infoKind,

    /// スキーマの運用��別情報のバージョン番号
    required String infoKindVersion,

    /// 発表時刻
    required String reportDateTime,

    /// 基点時刻
    required String targetDateTime,

    /// 情報番号
    String? serial,

    /// 見出し文
    String? headline,

    /// 識別情報
    String? eventId,
  }) = _Head;

  factory Head.fromJson(Map<String, dynamic> json) => _$HeadFromJson(json);
}
