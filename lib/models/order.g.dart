// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    totalAmount: json['totalAmount'] == null
        ? null
        : Amount.fromJson(json['totalAmount'] as Map<String, dynamic>),
    consumer: json['consumer'] == null
        ? null
        : ConsumerDetails.fromJson(json['consumer'] as Map<String, dynamic>),
    billing: json['billing'] == null
        ? null
        : BillingShippingDetails.fromJson(
            json['billing'] as Map<String, dynamic>),
    shipping: json['shipping'] == null
        ? null
        : BillingShippingDetails.fromJson(
            json['shipping'] as Map<String, dynamic>),
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Items.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    discounts: (json['discounts'] as List)
        ?.map((e) =>
            e == null ? null : Discount.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    merchant: json['merchant'] == null
        ? null
        : Merchant.fromJson(json['merchant'] as Map<String, dynamic>),
    merchantReference: json['merchantReference'] as String,
    taxAmount: json['taxAmount'] == null
        ? null
        : Amount.fromJson(json['taxAmount'] as Map<String, dynamic>),
    shippingAmount: json['shippingAmount'] == null
        ? null
        : Amount.fromJson(json['shippingAmount'] as Map<String, dynamic>),
    orderExpiryMilliseconds: json['orderExpiryMilliseconds'] as int,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'totalAmount': instance.totalAmount,
      'consumer': instance.consumer,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'items': instance.items,
      'discounts': instance.discounts,
      'merchant': instance.merchant,
      'merchantReference': instance.merchantReference,
      'taxAmount': instance.taxAmount,
      'shippingAmount': instance.shippingAmount,
      'orderExpiryMilliseconds': instance.orderExpiryMilliseconds,
    };
