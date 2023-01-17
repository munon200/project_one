import 'package:core/core.dart';
import 'package:dio/dio.dart';

class NetworkCreator {
  NetworkCreator._();

  static Dio create({
    required String baseUrl,
    Map<String, String>? headers,
    AuthInterceptor? authInterceptor,
    LoggerInterceptor? loggerInterceptor,
    HeaderInterceptor? headerInterceptor,
    NetworkInterceptor? networkInterceptor,
  }) {
    Dio dio = Dio();

    dio.options.baseUrl = baseUrl;
    dio.options.headers = headers;
    // dio.options.sendTimeout = AppEnv.sendTimeOut;
    // dio.options.connectTimeout = AppEnv.connectTimeOut;
    // dio.options.receiveTimeout = AppEnv.receiveTimeOut;

    dio.interceptors.addAll([
      networkInterceptor ?? NetworkInterceptor(),
      authInterceptor ?? AuthInterceptor(),
      headerInterceptor ?? HeaderInterceptor(),
      loggerInterceptor ??
          LoggerInterceptor(
            logPrint: print,
            requestHeader: true,
            requestBody: true,
            responseBody: true,
          ),
    ]);

    return dio;
  }
}
