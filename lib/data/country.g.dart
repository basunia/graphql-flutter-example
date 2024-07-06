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
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'capital': instance.capital,
      'code': instance.code,
      'currency': instance.currency,
      'name': instance.name,
      'phone': instance.phone,
      'emoji': instance.emoji,
    };
