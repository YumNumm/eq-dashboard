import 'package:dio/dio.dart';
import 'package:dmdata_api/src/api/v1/jmafile_api.dart';
import 'package:dmdata_api/src/api/v1/telegram_api.dart';
import 'package:dmdata_api/src/api/v2/contract_api.dart';
import 'package:dmdata_api/src/api/v2/gd_api.dart';
import 'package:dmdata_api/src/api/v2/parameter_api.dart';
import 'package:dmdata_api/src/api/v2/socket_api.dart';
import 'package:dmdata_api/src/api/v2/telegram_api.dart';

class DmdataApiUrlOptions {
  const DmdataApiUrlOptions({
    this.apiBaseUrl = 'https://api.dmdata.jp',
    this.jmaFileBaseUrl = 'https://jmafiledata.api.dmdata.jp',
    this.telegramBaseUrl = 'https://data.api.dmdata.jp',
  });

  final String apiBaseUrl;
  final String jmaFileBaseUrl;
  final String telegramBaseUrl;
}

class DmdataApi {
  const DmdataApi({
    required Dio dio,
    required DmdataApiUrlOptions options,
  })  : _dio = dio,
        _options = options;

  final Dio _dio;
  final DmdataApiUrlOptions _options;

  /// v1のAPIクライアント
  DmdataV1Api get v1 => DmdataV1Api(
        dio: _dio,
        options: _options,
      );

  /// v2のAPIクライアント
  DmdataV2Api get v2 => DmdataV2Api(
        dio: _dio,
        options: _options,
      );
}

class DmdataV1Api {
  const DmdataV1Api({
    required Dio dio,
    required DmdataApiUrlOptions options,
  })  : _dio = dio,
        _options = options;

  final Dio _dio;
  final DmdataApiUrlOptions _options;

  /// 電文データ関連のAPIクライアント
  TelegramDataApiClient get telegram => TelegramDataApiClient(
        _dio,
        baseUrl: _options.telegramBaseUrl,
      );

  /// 気象庁ファイル形式データ関連のAPIクライアント
  JmaFileDataApiClient get jmaFile => JmaFileDataApiClient(
        _dio,
        baseUrl: _options.jmaFileBaseUrl,
      );
}

class DmdataV2Api {
  DmdataV2Api({
    required Dio dio,
    required DmdataApiUrlOptions options,
  })  : _dio = dio,
        _options = options;

  final Dio _dio;
  final DmdataApiUrlOptions _options;

  /// 契約関連のAPIクライアント
  ContractApiClient get contract => ContractApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );

  GdApi get gd => GdApi(
        dio: _dio,
        options: _options,
      );

  /// パラメータ関連のAPIクライアント
  ParameterApiClient get parameter => ParameterApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );

  /// Socket関連のAPIクライアント
  SocketApiClient get socket => SocketApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );

  /// 電文関連のAPIクライアント
  TelegramApiClient get telegram => TelegramApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );
}
