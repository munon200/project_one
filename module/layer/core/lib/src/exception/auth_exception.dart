import 'package:core/src/exception/app_exception.dart';

class AuthException implements AppException {
  final int? code;
  final dynamic error;

  const AuthException({
    this.code,
    this.error,
  });
}
