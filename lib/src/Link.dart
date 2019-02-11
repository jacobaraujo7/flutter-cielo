import 'package:json_annotation/json_annotation.dart';

part 'Link.g.dart';

@JsonSerializable()
class Link {
  String method;
  String rel;
  String href;

  Link({
    this.method,
    this.rel,
    this.href,
  });

  factory Link.fromJson(Map<String, dynamic> json) =>
      _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}