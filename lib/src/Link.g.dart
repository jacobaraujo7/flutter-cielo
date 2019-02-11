// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
      method: json['Method'] as String,
      rel: json['Eel'] as String,
      href: json['Href'] as String);
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'Method': instance.method,
      'Rel': instance.rel,
      'Href': instance.href
    };
