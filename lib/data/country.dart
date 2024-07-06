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

  const Country(
    this.capital,
    this.code,
    this.currency,
    this.name,
    this.phone,
    this.emoji,
  );

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  @override
  String toString() => '$capital, $currency, $name, $phone, $emoji, $code';
}
