import 'package:network/network.dart';

/// Base for GraphQL repositories.
/// Reuses [ResponseHandler] and parsing from [network] package.
abstract class BaseGraphQLRepository {
  /// Parses a raw GraphQL response into [ResponseHandler]<T>.
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
