// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return Configuration(
    type: json['type'] as String,
    description: json['description'] as String,
    minimumAmount: json['minimumAmount'] == null
        ? null
        : Amount.fromJson(json['minimumAmount'] as Map<String, dynamic>),
    maximumAmount: json['maximumAmount'] == null
        ? null
        : Amount.fromJson(json['maximumAmount'] as Map<String, dynamic>),
    numberOfPayments: json['numberOfPayments'] as String,
    promotionUrl: json['promotionUrl'] as String,
    locales: (json['locales'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'minimumAmount': instance.minimumAmount,
      'maximumAmount': instance.maximumAmount,
      'numberOfPayments': instance.numberOfPayments,
      'promotionUrl': instance.promotionUrl,
      'locales': instance.locales,
    };
