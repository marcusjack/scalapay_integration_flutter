import 'package:json_annotation/json_annotation.dart';
part 'merchant.g.dart';

@JsonSerializable()
class Merchant{
String redirectConfirmUrl;
String redirectCancelUrl;

Merchant({
  this.redirectConfirmUrl,
  this.redirectCancelUrl});

factory Merchant.fromJson(Map<String, dynamic> json) => _$MerchantFromJson(json);
Map<String, dynamic> toJson() => _$MerchantToJson(this);
}