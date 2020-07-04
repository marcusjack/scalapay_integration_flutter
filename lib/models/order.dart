import 'package:json_annotation/json_annotation.dart';
import 'amount.dart';
import 'billing_shipping_details.dart';

import 'consumer_details.dart';
import 'discounts.dart';
import 'items.dart';
import 'merchant.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  Amount totalAmount;
  ConsumerDetails consumer;
  BillingShippingDetails billing;
  BillingShippingDetails shipping;
  List<Items> items;
  List<Discount> discounts;
  Merchant merchant;
  String merchantReference;
  Amount taxAmount;
  Amount shippingAmount;
  int orderExpiryMilliseconds;

  Order({
    this.totalAmount,
    this.consumer,
    this.billing,
    this.shipping,
    this.items,
    this.discounts,
    this.merchant,
    this.merchantReference,
    this.taxAmount,
    this.shippingAmount,
    this.orderExpiryMilliseconds});

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}