import 'package:freezed_annotation/freezed_annotation.dart';

part 'ntp_config_model.freezed.dart';
part 'ntp_config_model.g.dart';

@freezed
class NtpConfigModel with _$NtpConfigModel {
  const factory NtpConfigModel({
    @Default('ntp.nict.jp') String lookUpAddress,
    @Default(Duration(seconds: 10)) Duration timeout,
    @Default(Duration(hours: 2)) Duration interval,
  }) = _NtpConfigModel;

  factory NtpConfigModel.fromJson(Map<String, dynamic> json) =>
      _$NtpConfigModelFromJson(json);
}
