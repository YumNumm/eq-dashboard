import 'package:dio/dio.dart';
import 'package:dmdata_api/src/api/children/gd/gd_earthquake_api.dart';
import 'package:dmdata_api/src/api/children/gd/gd_eew_api.dart';

class GdApi {
  GdApi({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  GdEewApiClient get eew => GdEewApiClient(_dio);

  GdEarthquakeApiClient get earthquake => GdEarthquakeApiClient(_dio);
}
