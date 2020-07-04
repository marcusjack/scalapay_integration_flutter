// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    name: json['name'] as String,
    category: json['category'] as String,
    subcategory:
        (json['subcategory'] as List)?.map((e) => e as String)?.toList(),
    brand: json['brand'] as String,
    gtin: json['gtin'] as String,
    quantity: json['quantity'] as int,
    price: json['price'] == null
        ? null
        : Amount.fromJson(json['price'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'brand': instance.brand,
      'gtin': instance.gtin,
      'quantity': instance.quantity,
      'price': instance.price,
    };
