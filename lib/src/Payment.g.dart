// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return Payment(
      type: json['Type'] as String,
      amount: json['Amount'] as int,
      provider: json['Provider'] as String,
      address: json['Address'] as String,
      boletoNumber: json['BoletoNumber'] as String,
      assignor: json['Assignor'] as String,
      demonstrative: json['Demonstrative'] as String,
      expirationDate: json['ExpirationDate'] as String,
      identification: json['Identification'] as String,
      instructions: json['Instructions'] as String,
      installments: json['Installments'] as int,
      softDescriptor: json['SoftDescriptor'] as String,
      creditCard: json['CreditCard'] == null
          ? null
          : CreditCard.fromJson(json['CreditCard'] as Map<String, dynamic>),
      debitCard: json['DebitCard'] == null
          ? null
          : CreditCard.fromJson(json['DebitCard'] as Map<String, dynamic>),
      url: json['Url'] as String,
      number: json['Number'] as String,
      barCodeNumber: json['BarCodeNumber'] as String,
      digitableLine: json['DigitableLine'] as String,
      paymentId: json['PaymentId'] as String,
      currency: json['Currency'] as String,
      country: json['Country'] as String,
      extraDataCollection: json['ExtraDataCollection'] as List,
      status: json['Status'] as int,
      links: (json['Links'] as List)
          ?.map((e) =>
              e == null ? null : Link.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      serviceTaxAmount: json['ServiceTaxAmount'] as int,
      interest: json['Interest'],
      capture: json['Capture'] as bool,
      authenticate: json['Authenticate'] as bool,
      proofOfSale: json['ProofOfSale'] as String,
      tid: json['Tid'] as String,
      authorizationCode: json['AuthorizationCode'] as String,
      returnCode: json['ReturnCode'] as String,
      returnMessage: json['ReturnMessage'] as String);
}

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'Type': instance.type,
      'Amount': instance.amount,
      'Installments': instance.installments,
      'Provider': instance.provider,
      'Address': instance.address,
      'BoletoNumber': instance.boletoNumber,
      'Assignor': instance.assignor,
      'Demonstrative': instance.demonstrative,
      'ExpirationDate': instance.expirationDate,
      'Identification': instance.identification,
      'Instructions': instance.instructions,
      'SoftDescriptor': instance.softDescriptor,
      'CreditCard': instance.creditCard,
      'DebitCard': instance.debitCard,
      'Url': instance.url,
      'Number': instance.number,
      'BarCodeNumber': instance.barCodeNumber,
      'DigitableLine': instance.digitableLine,
      'PaymentId': instance.paymentId,
      'Currency': instance.currency,
      'Country': instance.country,
      'ExtraDataCollection': instance.extraDataCollection,
      'Status': instance.status,
      'Links': instance.links,
      'ServiceTaxAmount': instance.serviceTaxAmount,
      'Interest': instance.interest,
      'Capture': instance.capture,
      'Authenticate': instance.authenticate,
      'ProofOfSale': instance.proofOfSale,
      'Tid': instance.tid,
      'AuthorizationCode': instance.authorizationCode,
      'ReturnCode': instance.returnCode,
      'ReturnMessage': instance.returnMessage
    };
