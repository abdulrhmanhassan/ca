import 'package:ca/core/data/api/api_consumer.dart';
import 'package:ca/core/errors/exception.dart';
import 'package:dio/dio.dart';

import 'end_points.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
  }

  @override
  Future post(String path,
      {Object? data,
      Map<String, String>? queryParameters,
      bool isFromData = false}) async {
    try {
      dio.post(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data,
      Map<String, String>? queryParameters,
      bool isFromData = false}) async {
    try {
      dio.patch(
        path,
        data:
            isFromData ? FormData.fromMap(data as Map<String, dynamic>) : data,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future delete(String path,
      {Object? data, Map<String, String>? queryParameters}) async {
    try {
      dio.delete(path, data: data, queryParameters: queryParameters);
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, String>? queryParameters}) async {
    try {
      dio.get(path, data: data, queryParameters: queryParameters);
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}
