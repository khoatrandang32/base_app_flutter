import 'package:base_app/core/services/preferences.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ApiInterceptor extends Interceptor {
  final logger = Logger(printer: PrettyPrinter(methodCount: 0));

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    final token = await Prefs.getToken;
    options.headers['Authorization'] = token;
    //LOGGER
    logger.i('${options.method} ${options.uri}\nHeader: ${options.headers}\nBody: ${options.data}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    //LOGGER
    logger.i(
      'Status ${response.statusCode}: ${response.requestOptions.method} ${response.requestOptions.uri}\n'
      '${response.data}',
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.e(
      'Status ${err.response?.statusCode}: ${err.response?.requestOptions.uri}\n${err.message}',
    );
    handler.next(err);
  }
}
