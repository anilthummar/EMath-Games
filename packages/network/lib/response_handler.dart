/// Handles success and failure of API responses.
sealed class ResponseHandler<T> {
  /// Returns [OnSuccessResponse] if the response is successful.
  OnSuccessResponse<T>? getSuccessInstance();

  /// Returns [OnFailureResponse] if the response is a failure.
  OnFailureResponse<T>? getFailureInstance();

  /// True if the response is successful.
  bool isSuccess();

  /// True if the response is a failure.
  bool isFailure();
}

/// Success API response.
class OnSuccessResponse<T> extends ResponseHandler<T> {
  /// Successful response data.
  final T response;

  OnSuccessResponse({required this.response});

  @override
  OnFailureResponse<T>? getFailureInstance() => null;

  @override
  OnSuccessResponse<T>? getSuccessInstance() => this;

  @override
  bool isFailure() => false;

  @override
  bool isSuccess() => true;
}

/// Failure API response.
/// [error] is app-specific (e.g. [ErrorResult]); use in app layer.
class OnFailureResponse<T> extends ResponseHandler<T> {
  /// HTTP status code.
  final int? statusCode;
  /// Error details (app layer type).
  final Object? error;

  OnFailureResponse({this.statusCode, this.error});

  @override
  OnFailureResponse<T>? getFailureInstance() => this;

  @override
  OnSuccessResponse<T>? getSuccessInstance() => null;

  @override
  bool isFailure() => true;

  @override
  bool isSuccess() => false;
}
