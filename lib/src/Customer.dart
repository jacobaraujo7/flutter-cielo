import 'package:flutter_cielo/src/Address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Customer.g.dart';

@JsonSerializable()
class Customer {
  String name;
  String identity;
  Address address;

  Customer({
    this.name,
    this.identity,
    this.address,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}