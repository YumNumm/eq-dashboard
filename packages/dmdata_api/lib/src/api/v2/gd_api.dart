import 'package:dio/dio.dart';
import 'package:dmdata_api/src/api/dmdata_api.dart';
import 'package:dmdata_api/src/api/v2/gd/gd_earthquake_api.dart';
import 'package:dmdata_api/src/api/v2/gd/gd_eew_api.dart';

class GdApi {
  GdApi({
    required Dio dio,
    required DmdataApiUrlOptions options,
  })  : _dio = dio,
        _options = options;

  final Dio _dio;
  final DmdataApiUrlOptions _options;

  GdEewApiClient get eew => GdEewApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );

  GdEarthquakeApiClient get earthquake => GdEarthquakeApiClient(
        _dio,
        baseUrl: _options.apiBaseUrl,
      );
}
