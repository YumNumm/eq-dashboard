import 'package:dmdata_api/src/model/v2/component/earthquake_component.dart';
import 'package:dmdata_api/src/model/v2/error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake_event.freezed.dart';
part 'earthquake_event.g.dart';

@freezed
class EarthquakeEvent with _$EarthquakeEvent {
  const factory EarthquakeEvent({
    required String responseId,
    required String responseTime,
    required String status,
    required EarthquakeEventData event,
    DmDataError? error,
  }) = _EarthquakeEvent;

  factory EarthquakeEvent.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeEventFromJson(json);
}

@freezed
class EarthquakeEventData with _$EarthquakeEventData {
  const factory EarthquakeEventData({
    required dynamic id,
    required String type,
    required String eventId,
    required String arrivalTime,
    String? originTime,
    Hypocenter? hypocenter,
    Magnitude? magnitude,
    String? maxInt,
    String? maxLgInt,
    String? lgCategory,
    @Default([]) List<EarthquakeTelegram> telegrams,
  }) = _EarthquakeEventData;

  factory EarthquakeEventData.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeEventDataFromJson(json);
}

@freezed
class EarthquakeTelegram with _$EarthquakeTelegram {
  const factory EarthquakeTelegram({
    required int serial,
    required String id,
    required String originalId,
    required String classification,
    required TelegramHead head,
    required String receivedTime,
    required TelegramReport xmlReport,
    required TelegramSchema schema,
    required String format,
    required String url,
  }) = _EarthquakeTelegram;

  factory EarthquakeTelegram.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeTelegramFromJson(json);
}

@freezed
class TelegramHead with _$TelegramHead {
  const factory TelegramHead({
    required String type,
    required String author,
    required String time,
    required bool test,
    String? designation,
  }) = _TelegramHead;

  factory TelegramHead.fromJson(Map<String, dynamic> json) =>
      _$TelegramHeadFromJson(json);
}

@freezed
class TelegramReport with _$TelegramReport {
  const factory TelegramReport({
    required TelegramReportHead head,
    required TelegramReportControl control,
  }) = _TelegramReport;

  factory TelegramReport.fromJson(Map<String, dynamic> json) =>
      _$TelegramReportFromJson(json);
}

@freezed
class TelegramReportHead with _$TelegramReportHead {
  const factory TelegramReportHead({
    required String title,
    required String serial,
    required String eventId,
    required String headline,
    required String infoKind,
    required String infoType,
    required String reportDateTime,
    required String targetDateTime,
    required String infoKindVersion,
  }) = _TelegramReportHead;

  factory TelegramReportHead.fromJson(Map<String, dynamic> json) =>
      _$TelegramReportHeadFromJson(json);
}

@freezed
class TelegramReportControl with _$TelegramReportControl {
  const factory TelegramReportControl({
    required String title,
    required String status,
    required String dateTime,
    required String editorialOffice,
    required String publishingOffice,
  }) = _TelegramReportControl;

  factory TelegramReportControl.fromJson(Map<String, dynamic> json) =>
      _$TelegramReportControlFromJson(json);
}

@freezed
class TelegramSchema with _$TelegramSchema {
  const factory TelegramSchema({
    required String type,
    required String version,
  }) = _TelegramSchema;

  factory TelegramSchema.fromJson(Map<String, dynamic> json) =>
      _$TelegramSchemaFromJson(json);
}
