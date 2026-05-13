/// GraphQL constants for client configuration and operations.
abstract class GraphQLConst {
  static const String defaultCacheKey = 'graphql_cache';
  static const Duration defaultQueryTimeout = Duration(seconds: 30);
  static const Duration defaultMutationTimeout = Duration(seconds: 30);
}
