class CountQuery {
  const CountQuery({
    this.countryCode = defaultCountryCode,
  });

  final String countryCode;

  final String readCountry = r'''
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

  static const String defaultCountryCode = "BD";
}
