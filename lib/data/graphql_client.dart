import 'package:graph_ql_api/data/api_request.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GqlClient {
  // static GqlClient? _client;
  // GqlClient._();
  // static GqlClient get client => _client ??= GqlClient._();

  static final GqlClient _gqlClient = GqlClient._internal();

  factory GqlClient() {
    return _gqlClient;
  }

  GqlClient._internal();

  GraphQLClient get getClient {
    HttpLink httpLink = HttpLink(ApiRequest.apiEndPoint);

    GraphQLClient graphQLClient =
        GraphQLClient(link: httpLink, cache: GraphQLCache());
    return graphQLClient;
  }
}
