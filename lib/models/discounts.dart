import 'package:json_annotation/json_annotation.dart';

import 'amount.dart';

part 'discounts.g.dart';

@JsonSerializable()
class Discount{
String displayName;
Amount amount;

Discount({
  this.displayName,
  this.amount});

factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
Map<String, dynamic> toJson() => _$DiscountToJson(this);
}