import 'package:dmdata_api/src/model/v2/error.dart';
import 'package:dmdata_api/src/model/v2/response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_list.freezed.dart';
part 'contract_list.g.dart';

@freezed
class ContractList with _$ContractList implements DmdataResponse {
  const factory ContractList({
    required String responseId,
    required String responseTime,
    required String status,
    @Default([]) List<ContractItem> items,
    DMMError? error,
  }) = _ContractList;

  factory ContractList.fromJson(Map<String, dynamic> json) =>
      _$ContractListFromJson(json);
}

@freezed
class ContractItem with _$ContractItem {
  const factory ContractItem({
    required int planId,
    required String planName,
    required String classification,
    required ContractPrice price,
    required bool isValid,
    required int connectionCounts,
    dynamic id,
    String? start,
  }) = _ContractItem;

  factory ContractItem.fromJson(Map<String, dynamic> json) =>
      _$ContractItemFromJson(json);
}

@freezed
class ContractPrice with _$ContractPrice {
  const factory ContractPrice({
    required int day,
    required int month,
  }) = _ContractPrice;

  factory ContractPrice.fromJson(Map<String, dynamic> json) =>
      _$ContractPriceFromJson(json);
}
