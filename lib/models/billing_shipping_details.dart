import 'package:json_annotation/json_annotation.dart';

part 'billing_shipping_details.g.dart';

@JsonSerializable()
class BillingShippingDetails {
String name;
String line1;
String suburb;
String postcode;
String countryCode;
String phoneNumber;

BillingShippingDetails({
  this.name,
  this.line1,
  this.suburb,
  this.postcode,
  this.countryCode,
  this.phoneNumber
});

factory BillingShippingDetails.fromJson(Map<String, dynamic> json) => _$BillingShippingDetailsFromJson(json);
Map<String, dynamic> toJson() => _$BillingShippingDetailsToJson(this);
}