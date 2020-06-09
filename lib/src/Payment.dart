import 'package:flutter_cielo/src/CreditCard.dart';
import 'package:flutter_cielo/src/Link.dart';

part 'Payment.g.dart';

class Payment {
  String type;
  int amount;
  int installments;
  String provider;
  String address;
  String boletoNumber;
  String assignor;
  String demonstrative;
  String expirationDate;
  String identification;
  String instructions;
  String softDescriptor;
  CreditCard creditCard;
  CreditCard debitCard;

  String url;
  String number;
  String barCodeNumber;
  String digitableLine;
  String paymentId;
  String currency;
  String country;
  List<dynamic> extraDataCollection;
  int status;
  List<Link> links;

  int serviceTaxAmount;
  dynamic interest;
  bool capture;
  bool authenticate;
  String proofOfSale;
  String tid;
  String authorizationCode;
  String returnCode;
  String returnMessage; // Obrigatório para pagamento com débito
  String returnUrl;

  Payment({
    this.type,
    this.amount,
    this.provider,
    this.address,
    this.boletoNumber,
    this.assignor,
    this.demonstrative,
    this.expirationDate,
    this.identification,
    this.instructions,
    this.installments,
    this.softDescriptor,
    this.creditCard,
    this.debitCard,
    this.url,
    this.number,
    this.barCodeNumber,
    this.digitableLine,
    this.paymentId,
    this.currency,
    this.country,
    this.extraDataCollection,
    this.status,
    this.links,
    this.serviceTaxAmount,
    this.interest,
    this.capture,
    this.authenticate,
    this.proofOfSale,
    this.tid,
    this.authorizationCode,
    this.returnCode,
    this.returnMessage,
    this.returnUrl,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

class TypePayment {
  static String get creditCard => 'CreditCard';
  static String get debitCard => 'DebitCard';
  static String get boleto => 'Boleto';
}