// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return Sale(
      merchantOrderId: json['MerchantOrderId'] as String,
      customer: json['Customer'] == null
          ? null
          : Customer.fromJson(json['Customer'] as Map<String, dynamic>),
      payment: json['Payment'] == null
          ? null
          : Payment.fromJson(json['Payment'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SaleToJson(Sale instance) => <String, dynamic>{
      'MerchantOrderId': instance.merchantOrderId,
      'Customer': instance.customer,
      'Payment': instance.payment
    };
