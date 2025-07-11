import 'package:base_app/core/constants/constants.dart';
import 'package:dio/dio.dart';

import 'api_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late Dio dio;

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: AppConstants.apiTimeOut),
        receiveTimeout: const Duration(seconds: AppConstants.apiTimeOut),
        contentType: 'application/json',
      ),
    );

    dio.interceptors.add(ApiInterceptor());
  }
}
