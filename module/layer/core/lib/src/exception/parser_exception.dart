import 'package:core/src/exception/app_exception.dart';

class ParserException implements AppException {
  final int? code;
  final dynamic error;

  const ParserException({
    this.code,
    this.error,
  });
}
