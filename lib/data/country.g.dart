// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      json['capital'] as String,
      json['code'] as String,
      json['currency'] as String,
      json['name'] as String,
      json['phone'] as String,
      json['emoji'] as String,
      Continent.fromJson(json['continent'] as Map<String, dynamic>),
      (json['states'] as List<dynamic>)
          .map((e) => States.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'capital': instance.capital,
      'code': instance.code,
      'currency': instance.currency,
      'name': instance.name,
      'phone': instance.phone,
      'emoji': instance.emoji,
      'continent': instance.continent,
      'states': instance.states,
    };

Continent _$ContinentFromJson(Map<String, dynamic> json) => Continent(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ContinentToJson(Continent instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

States _$StatesFromJson(Map<String, dynamic> json) => States(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$StatesToJson(States instance) => <String, dynamic>{
      'name': instance.name,
    };
