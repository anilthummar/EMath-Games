import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:network/network.dart';

/// Wraps [GraphQLClient] and maps [QueryResult] to [ResponseHandler].
class GraphQLClientWrapper {
  GraphQLClientWrapper(this._client);

  final GraphQLClient _client;

  /// Executes a query and returns [ResponseHandler].
  Future<ResponseHandler<Map<String, dynamic>?>> query(
    DocumentNode document, {
    Map<String, dynamic>? variables,
    FetchPolicy fetchPolicy = FetchPolicy.cacheFirst,
    String? operationName,
  }) async {
    final result = await _client.query(
      QueryOptions(
        document: document,
        variables: variables ?? const {},
        fetchPolicy: fetchPolicy,
        operationName: operationName,
      ),
    );
    return _toResponseHandler(result);
  }

  /// Executes a mutation and returns [ResponseHandler].
  Future<ResponseHandler<Map<String, dynamic>?>> mutate(
    DocumentNode document, {
    Map<String, dynamic>? variables,
    FetchPolicy fetchPolicy = FetchPolicy.networkOnly,
    String? operationName,
  }) async {
    final result = await _client.mutate(
      MutationOptions(
        document: document,
        variables: variables ?? const {},
        fetchPolicy: fetchPolicy,
        operationName: operationName,
      ),
    );
    return _toResponseHandler(result);
  }

  ResponseHandler<Map<String, dynamic>?> _toResponseHandler(
    QueryResult<Object?> result,
  ) {
    if (result.hasException) {
      final ex = result.exception;
      return OnFailureResponse<Map<String, dynamic>?>(
        statusCode: _statusFromException(ex),
        error: ex,
      );
    }
    return OnSuccessResponse<Map<String, dynamic>?>(
      response: result.data,
    );
  }

  int? _statusFromException(OperationException? ex) {
    if (ex == null) return null;
    final linkException = ex.linkException;
    if (linkException is ServerException) {
      return linkException.statusCode;
    }
    return null;
  }

  /// Access underlying client for advanced usage (watchQuery, subscribe, etc.).
  GraphQLClient get client => _client;
}
