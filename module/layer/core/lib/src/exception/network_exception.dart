import 'package:core/src/exception/app_exception.dart';

class NetworkException implements AppException {
  final int? code;
  final dynamic error;

  const NetworkException({
    this.code,
    this.error,
  });
}
