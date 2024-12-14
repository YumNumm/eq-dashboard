import 'package:dio/dio.dart';
import 'package:dmdata_api/src/api/children/contract_api.dart';
import 'package:dmdata_api/src/api/children/gd/gd_earthquake_api.dart';
import 'package:dmdata_api/src/api/children/gd/gd_eew_api.dart';
import 'package:dmdata_api/src/api/children/gd_api.dart';
import 'package:dmdata_api/src/api/children/parameter_api.dart';
import 'package:dmdata_api/src/api/children/socket_api.dart';

class DmdataApi {
  DmdataApi({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  /// 契約関連のAPIクライアント
  ContractApiClient get contract => ContractApiClient(_dio);

  /// 地震・地震速報関連のAPIクライアント
  GdApi get gd => GdApi(dio: _dio);

  /// パラメータ関連のAPIクライアント
  ParameterApiClient get parameter => ParameterApiClient(_dio);

  /// Socket関連のAPIクライアント
  SocketApiClient get socket => SocketApiClient(_dio);
}
