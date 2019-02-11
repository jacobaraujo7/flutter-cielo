// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
      street: json['Street'] as String,
      number: json['Number'] as String,
      complement: json['Complement'] as String,
      zipCode: json['ZipCode'] as String,
      district: json['District'] as String,
      city: json['City'] as String,
      state: json['State'] as String,
      country: json['Country'] as String);
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'Street': instance.street,
      'Number': instance.number,
      'Complement': instance.complement,
      'ZipCode': instance.zipCode,
      'District': instance.district,
      'City': instance.city,
      'State': instance.state,
      'Country': instance.country
    };
