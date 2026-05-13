import 'response_handler.dart';

/// Base for API repositories.
abstract class BaseRepository {
  /// Parses a raw response into [ResponseHandler]<T>.
  ResponseHandler<T> getParsedResponseHandler<T>({
    required ResponseHandler<Map<String, dynamic>?> responseHandler,
    required T Function(Map<String, dynamic> value) parser,
  }) {
    if (responseHandler.isSuccess()) {
      final T parsedData = parser(
        responseHandler.getSuccessInstance()?.response ?? <String, dynamic>{},
      );
      return OnSuccessResponse<T>(response: parsedData);
    }
    return OnFailureResponse<T>(
      statusCode: responseHandler.getFailureInstance()?.statusCode,
      error: responseHandler.getFailureInstance()?.error,
    );
  }
}
