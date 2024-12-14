import 'package:dmdata_api/dmdata_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_ui_model.freezed.dart';

@freezed
class ContractUiModel with _$ContractUiModel {
  const factory ContractUiModel({
    required int planId,
    required String planName,
    required String classification,
    required int pricePerDay,
    required int pricePerMonth,
    required int connectionCounts,
    required bool isValid,
  }) = _ContractUiModel;

  factory ContractUiModel.fromContractItem(ContractItem item) {
    return ContractUiModel(
      planId: item.planId,
      planName: item.planName,
      classification: item.classification,
      pricePerDay: item.price.day,
      pricePerMonth: item.price.month,
      connectionCounts: item.connectionCounts,
      isValid: item.isValid,
    );
  }
}
