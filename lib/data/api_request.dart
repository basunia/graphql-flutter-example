import 'package:graph_ql_api/data/country.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql/language.dart';

class ApiRequest {
  static const apiEndPoint = "https://countries.trevorblades.com";

  HttpLink get _httpLink => HttpLink(apiEndPoint);

  GraphQLClient get _graphQLClient =>
      GraphQLClient(link: _httpLink, cache: GraphQLCache());

  static const String readCountry = r'''
  query CountryName($country: ID!) {
    country(code: $country) {
        capital
        code
        currency
        emoji
        name
        phone
    }
  }
  ''';

  // final readCountry = parseString(readCountry);

  static const String countryCode = "IN";

  final QueryOptions options = QueryOptions(
    document: parseString(readCountry),
    variables: const <String, dynamic>{
      'country': countryCode,
    },
  );

  Future<void> fetchCountry() async {
    QueryResult result = await _graphQLClient.query(options);
    if (result.hasException) {
      print(result.exception.toString());
    }
    print('data ${result.data}');
    // final dynamic repositories = result.data!['data'] as dynamic;
    final dynamic data = result.data?['country'];
    final Country country = Country.fromJson(data);
    print('Json response=> ${country.toString()}');
  }

  // static const String readRepositories = r'''
  // query ReadRepositories($nRepositories: Int!) {
  //   viewer {
  //     repositories(last: $nRepositories) {
  //       nodes {
  //         __typename
  //         id
  //         name
  //         viewerHasStarred
  //       }
  //     }
  //   }
  // }
  // ''';
}
