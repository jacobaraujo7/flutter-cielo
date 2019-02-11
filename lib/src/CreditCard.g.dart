// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CreditCard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditCard _$CreditCardFromJson(Map<String, dynamic> json) {
  return CreditCard(
      cardNumber: json['CardNumber'] as String,
      holder: json['Holder'] as String,
      expirationDate: json['ExpirationDate'] as String,
      securityCode: json['SecurityCode'] as String,
      brand: json['Brand'] as String,
      cardToken: json['CardToken'] as String);
}

Map<String, dynamic> _$CreditCardToJson(CreditCard instance) =>
    <String, dynamic>{
      'CardNumber': instance.cardNumber,
      'Holder': instance.holder,
      'ExpirationDate': instance.expirationDate,
      'SecurityCode': instance.securityCode,
      'Brand': instance.brand,
      'CardToken': instance.cardToken
    };
