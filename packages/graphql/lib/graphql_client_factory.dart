import 'package:graphql_flutter/graphql_flutter.dart';

import 'graphql_client_wrapper.dart';

/// Factory to create [GraphQLClient] and [GraphQLClientWrapper].
class GraphQLClientFactory {
  /// Creates [GraphQLClient] with [HttpLink] and optional [AuthLink].
  static GraphQLClient createClient({
    required String endpoint,
    Future<String?> Function()? getToken,
    Map<String, String> headers = const {},
    Duration? connectTimeout,
  }) {
    final httpLink = HttpLink(
      endpoint,
      defaultHeaders: headers,
    );

    final Link link = getToken != null
        ? AuthLink(getToken: getToken).concat(httpLink)
        : httpLink;

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.cacheFirst),
        mutate: Policies(fetch: FetchPolicy.networkOnly),
      ),
    );
  }

  /// Creates [GraphQLClientWrapper] from config.
  static GraphQLClientWrapper createWrapper({
    required String endpoint,
    Future<String?> Function()? getToken,
    Map<String, String> headers = const {},
  }) {
    return GraphQLClientWrapper(
      createClient(
        endpoint: endpoint,
        getToken: getToken,
        headers: headers,
      ),
    );
  }
}
