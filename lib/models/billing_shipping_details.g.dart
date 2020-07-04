// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_shipping_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillingShippingDetails _$BillingShippingDetailsFromJson(
    Map<String, dynamic> json) {
  return BillingShippingDetails(
    name: json['name'] as String,
    line1: json['line1'] as String,
    suburb: json['suburb'] as String,
    postcode: json['postcode'] as String,
    countryCode: json['countryCode'] as String,
    phoneNumber: json['phoneNumber'] as String,
  );
}

Map<String, dynamic> _$BillingShippingDetailsToJson(
        BillingShippingDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'line1': instance.line1,
      'suburb': instance.suburb,
      'postcode': instance.postcode,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
    };
