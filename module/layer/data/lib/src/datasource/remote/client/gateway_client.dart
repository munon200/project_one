import 'package:core/core.dart';
import 'package:dio/dio.dart';

class GatewayClient {
  GatewayClient._();

  static Dio get client => NetworkCreator.create(
        baseUrl: 'https://dog.ceo/',
        headers: {},
      );
}