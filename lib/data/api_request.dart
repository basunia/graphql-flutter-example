import 'package:graph_ql_api/data/country.dart';
import 'package:graph_ql_api/data/country_query.dart';
import 'package:graph_ql_api/data/graphql_client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql/language.dart';

class ApiRequest {
  static const apiEndPoint = "https://countries.trevorblades.com";

  QueryOptions get getOptions {
    const countryQuery = CountQuery();
    return QueryOptions(
      document: parseString(countryQuery.readCountry),
      variables: <String, dynamic>{
        'country': countryQuery.countryCode,
      },
    );
  }

  Future<void> fetchCountry() async {
    QueryResult result = await GqlClient().getClient.query(getOptions);
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
