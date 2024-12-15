import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contract_list_provider.g.dart';

/// すべての契約区分を取得する
@riverpod
Future<ContractListResponse> availableContractList(Ref ref) async {
  final api = ref.watch(dmdataApiProvider);
  final response = await api.v2.contract.getContractList();
  return response;
}

/// 契約済みの契約区分を取得する
@riverpod
Future<ContractListResponse> contractList(Ref ref) async {
  final contractAsync = await ref.watch(availableContractListProvider.future);
  final contractList =
      contractAsync.items.where((item) => item.isValid).toList();
  return ContractListResponse(
    responseId: contractAsync.responseId,
    responseTime: contractAsync.responseTime,
    status: contractAsync.status,
    items: contractList,
  );
}
