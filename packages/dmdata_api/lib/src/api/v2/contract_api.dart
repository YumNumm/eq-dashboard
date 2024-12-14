import 'package:dio/dio.dart';
import 'package:dmdata_api/src/model/v2/contract/contract_list.dart';
import 'package:retrofit/retrofit.dart';

part 'contract_api.g.dart';

@RestApi()
abstract class ContractApiClient {
  factory ContractApiClient(Dio dio, {String baseUrl}) = _ContractApiClient;

  /// 契約中、未契約の情報リストを取得します。
  @GET('/v2/contract')
  Future<ContractListResponse> getContractList();
}
