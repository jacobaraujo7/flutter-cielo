// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
      name: json['Name'] as String,
      identity: json['Identity'] as String,
      address: json['Address'] == null
          ? null
          : Address.fromJson(json['Address'] as Map<String, dynamic>));
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'Name': instance.name,
      'Identity': instance.identity,
      'Address': instance.address
    };
