import 'package:core/core.dart';

class NetworkResponse<TResponse> {
  TResponse? _response;
  AppException? _exception;

  NetworkResponse._(
    this._response,
    this._exception,
  );

  TResponse? get getResponse => _response;

  AppException? get getException => _exception;

  bool get isFailure => runtimeType == ResponseFailure<TResponse>;

  bool get isSuccess => runtimeType == ResponseSuccess<TResponse>;

  TResult fold<TResult>({
    required TResult Function(TResponse response) onSuccess,
    required TResult Function(AppException exception) onFailure,
  }) {
    if (isSuccess) {
      return onSuccess(getResponse as TResponse);
    } else {
      return onFailure(getException as AppException);
    }
  }
}

class ResponseSuccess<TResponse> extends NetworkResponse<TResponse> {
  ResponseSuccess({
    required TResponse response,
  }) : super._(response, null);
}

class ResponseFailure<TResponse> extends NetworkResponse<TResponse> {
  ResponseFailure({
    required AppException exception,
  }) : super._(null, exception);
}
