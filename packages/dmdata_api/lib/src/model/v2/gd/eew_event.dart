import 'package:dmdata_api/src/model/v2/gd/eew_list.dart';
import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eew_event.freezed.dart';
part 'eew_event.g.dart';

/// 緊急地震速報イベントのレスポンス
@freezed
class EewEventResponse with _$EewEventResponse implements DmdataResponse {
  const factory EewEventResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// 緊急地震速報リスト
    required List<EewEventItem> items,
  }) = _EewEventResponse;

  factory EewEventResponse.fromJson(Map<String, dynamic> json) =>
      _$EewEventResponseFromJson(json);
}

/// 緊急地震速報イベントのアイテム
@freezed
class EewEventItem with _$EewEventItem {
  const factory EewEventItem({
    /// 受信ID
    required dynamic id,

    /// 緊急地震速報のEventID
    required String eventId,

    /// EventIDに対するこの情報の情報番号
    required int serial,

    /// この情報を発表した時刻
    required String dateTime,

    /// この情報で最終であるかどうかを示し、最終報の場合は true とする
    required bool isLastInfo,

    /// この情報で緊急地震速報を取り消されたかどうかを示し、取消された場合は true とする
    required bool isCanceled,

    /// 緊急地震速報の電文リスト、配列中の要素は1個で固定
    required List<EewTelegram> telegrams,

    /// この情報発表時、緊急地震速報の警報を発表されたかどうかを示し、警報発表済みの場合は true とする
    /// 取消時には出現しない
    bool? isWarning,

    /// 予測震源要素
    /// 取消時は出現しない
    EewEarthquake? earthquake,

    /// 予測震度要素
    /// 取消時・震度未計算時は出現しない
    EewIntensity? intensity,

    /// フリーテキストで表現したい場合に出現し、これを記述する
    String? text,
  }) = _EewEventItem;

  factory EewEventItem.fromJson(Map<String, dynamic> json) =>
      _$EewEventItemFromJson(json);
}

/// 緊急地震速報の電文情報
@freezed
class EewTelegram with _$EewTelegram {
  const factory EewTelegram({
    /// 電文受信通番
    required dynamic serial,

    /// JSON化電文を区別するユニーク384bitハッシュ
    required String id,

    /// JSON化電文の基となったXML電文を区別するユニーク384bitハッシュ
    required String originalId,

    /// 配信区分により変化。取りうる値は eew.forecast
    required String classification,

    /// ヘッダ情報
    required TelegramHead head,

    /// 受信時刻
    required String receivedTime,

    /// XML電文Control,Head情報
    required XmlReport xmlReport,

    /// 加工データのスキーマ情報
    required Schema schema,

    /// bodyフィールドの表現形式を示す
    /// `xml`、`a/n`、`binary` は気象庁が定めたフォーマット、`json` は本サービスが独自に定めたフォーマット
    required String format,

    /// データURL
    required String url,
  }) = _EewTelegram;

  factory EewTelegram.fromJson(Map<String, dynamic> json) =>
      _$EewTelegramFromJson(json);
}

/// ヘッダ情報
@freezed
class TelegramHead with _$TelegramHead {
  const factory TelegramHead({
    /// データ種類コード
    required String type,

    /// 発表英字官署名
    required String author,

    /// 基点��刻
    required String time,

    /// 訓練、試験等のテスト等電文かどうかを示す
    /// このAPIでは常にfalse
    required bool test,

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

    /// スキーマの運用種別情報のバージョン番号
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

/// 加工データのスキーマ情報
@freezed
class Schema with _$Schema {
  const factory Schema({
    /// スキーマ名
    required String type,

    /// スキーマのバージョン
    required String version,
  }) = _Schema;

  factory Schema.fromJson(Map<String, dynamic> json) => _$SchemaFromJson(json);
}
