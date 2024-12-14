import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

@freezed
class DMMError with _$DMMError {
  const factory DMMError({
    required String message,
    required int code,
  }) = _DMMError;

  factory DMMError.fromJson(Map<String, dynamic> json) =>
      _$DMMErrorFromJson(json);
}
