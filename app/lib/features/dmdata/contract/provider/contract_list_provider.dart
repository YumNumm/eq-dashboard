import 'package:dmdata_api/dmdata_api.dart';
import 'package:eqdashboard/core/provider/dmdata.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contract_list_provider.g.dart';

@riverpod
Future<ContractListResponse> contractList(Ref ref) async {
  final api = ref.watch(dmdataApiProvider);
  final response = await api.v2.contract.getContractList();
  ref.keepAlive();
  return response;
}
