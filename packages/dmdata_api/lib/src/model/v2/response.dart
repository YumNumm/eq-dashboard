import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';
part 'response.g.dart';

/// DMDATAのAPIv2の基本レスポンス型のインターフェース
abstract class DmdataResponse {
  /// API処理ID
  String get responseId;

  /// API処理時刻（ISO8601拡張形式）
  String get responseTime;

  /// レスポンスのステータス
  /// 成功時は `ok`、失敗時（エラー）は `error`
  String get status;
}

/// DMDATAのAPIv2のエラーレスポンス型
@freezed
class DmdataErrorResponse with _$DmdataErrorResponse implements DmdataResponse {
  const factory DmdataErrorResponse({
    /// API処理ID
    required String responseId,

    /// API処理時刻（ISO8601拡張形式）
    required String responseTime,

    /// レスポンスのステータス
    /// 成功時は `ok`、失敗時（エラー）は `error`
    required String status,

    /// エラー情報
    required ErrorInfo error,
  }) = _DmdataErrorResponse;

  factory DmdataErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$DmdataErrorResponseFromJson(json);
}

/// エラー情報��格納するクラス
@freezed
class ErrorInfo with _$ErrorInfo {
  const factory ErrorInfo({
    /// エラーメッセージ
    required String message,

    /// HTTPステータスコード
    required int code,
  }) = _ErrorInfo;

  factory ErrorInfo.fromJson(Map<String, dynamic> json) =>
      _$ErrorInfoFromJson(json);
}
