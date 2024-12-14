import 'package:dio/dio.dart';

class DmdataApi {
  DmdataApi({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;
}
