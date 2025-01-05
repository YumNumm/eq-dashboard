import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class DmDataError with _$DmDataError {
  const factory DmDataError({
    required String message,
    required int code,
  }) = _DmDataError;

  factory DmDataError.fromJson(Map<String, dynamic> json) =>
      _$DmDataErrorFromJson(json);
}
