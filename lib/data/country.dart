import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  final String capital;
  final String code;
  final String currency;
  final String name;
  final String phone;
  final String emoji;
  final Continent continent;
  final List<States> states;

  const Country(
    this.capital,
    this.code,
    this.currency,
    this.name,
    this.phone,
    this.emoji,
    this.continent,
    this.states,
  );

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  @override
  String toString() => '$capital, $currency, $name, $phone, $emoji, $code';
}

@JsonSerializable()
class Continent {
  String? code;
  String? name;

  Continent({this.code, this.name});

  factory Continent.fromJson(json) => _$ContinentFromJson(json);

  Map<String, dynamic> toJson() => _$ContinentToJson(this);
}

@JsonSerializable()
class States {
  String? name;

  States({this.name});

  factory States.fromJson(json) => _$StatesFromJson(json);

  Map<String, dynamic> toJson() => _$StatesToJson(this);
}
