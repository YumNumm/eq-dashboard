import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jmafile_list.freezed.dart';
part 'jmafile_list.g.dart';

/// 気象庁ファイル形式データリストのレスポンス
@freezed
class JmaFileListResponse with _$JmaFileListResponse implements DmdataResponse {
  const factory JmaFileListResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// ファイル形式データリスト
    required List<JmaFileListItem> items,

    /// PuLL時に使用する
    required String nextPooling,

    /// PuLL時、次にリクエストするまでの待機すべき最小時間（ミリ秒）
    required int nextPoolingInterval,

    /// 次のリソースがある場合に出現
    String? nextToken,
  }) = _JmaFileListResponse;

  factory JmaFileListResponse.fromJson(Map<String, dynamic> json) =>
      _$JmaFileListResponseFromJson(json);
}

/// ファイル形式データリストのアイテム
@freezed
class JmaFileListItem with _$JmaFileListItem {
  const factory JmaFileListItem({
    /// ファイル形式データ受信通番
    required String serial,

    /// データを区別するSHA512のハッシュBASE64URLエンコードID
    required String id,

    /// 配信区分（API名）
    required String classification,

    /// ヘッダ情報
    /// format が `concat` の場合、親ファイルのほか子データのヘッダも入る（要素が2個以上）
    required List<JmaFileHeader> headers,

    /// 受信時刻
    required String receivedTime,

    /// データのフォーマット（`headers[0].format` とおなじ）
    /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
    /// `concat` については、`.tar` 形式のファイルを、データ本体を連結したもの
    required String format,

    /// データURL
    required String url,

    /// データの圧縮形式
    /// 取りうる値は、`gzip`、`zip`、null
    String? compression,
  }) = _JmaFileListItem;

  factory JmaFileListItem.fromJson(Map<String, dynamic> json) =>
      _$JmaFileListItemFromJson(json);
}

/// ヘッダ情報
@freezed
class JmaFileHeader with _$JmaFileHeader {
  const factory JmaFileHeader({
    /// データの内容の代表的な時刻
    required String time,

    /// フラグ情報
    required JmaFileFlags flags,

    /// 英字発信官署名
    required String author,

    /// データのフォーマット
    /// 取りうる値は、`grib2`、`bufr3`、`bufr4`、`xml`、`bpf`、`shx`、`pdf`、`png`、`jpeg`、`gif`、`concat`
    required String format,

    /// データのサイズ
    required int length,

    /// 受信データの属性値（データ識別名を`_`で分割した配列）
    required List<String> values,

    /// 受信ファイル名
    required String filename,
  }) = _JmaFileHeader;

  factory JmaFileHeader.fromJson(Map<String, dynamic> json) =>
      _$JmaFileHeaderFromJson(json);
}

/// フラグ情報
@freezed
class JmaFileFlags with _$JmaFileFlags {
  const factory JmaFileFlags({
    /// 作成プロダクトモード、`Z` のみが入る
    /// `Z`: ローカル情報識別子
    required String product,

    /// 発信元識別で、`headers[].author`のコード種別を示す、取りうる値は`C`、`J`
    /// `C`: WMO 英字発信官署名
    /// `J`: 気象庁作成の英字発信官署名
    required String oflag,

    /// データ属性を表すが、現在のところ使用していない
    String? productidentifier,
  }) = _JmaFileFlags;

  factory JmaFileFlags.fromJson(Map<String, dynamic> json) =>
      _$JmaFileFlagsFromJson(json);
}
