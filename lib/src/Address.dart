part 'Address.g.dart';

class Address {
  String street;
  String number;
  String complement;
  String zipCode;
  String district;
  String city;
  String state;
  String country;

  Address({
    this.street,
    this.number,
    this.complement,
    this.zipCode,
    this.district,
    this.city,
    this.state,
    this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
