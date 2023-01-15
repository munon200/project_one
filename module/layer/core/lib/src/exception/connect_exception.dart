import 'package:core/src/exception/app_exception.dart';

class ConnectException implements AppException {
  final int? code;
  final dynamic error;

  const ConnectException({
    this.code,
    this.error,
  });
}
