import 'package:json_annotation/json_annotation.dart';

import 'amount.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
String name;
String category;
List<String> subcategory;
String brand;
String gtin;
int quantity;
Amount price;

Items({
this.name,
this.category,
this.subcategory,
this.brand,
this.gtin,
this.quantity,
this.price

});

factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
Map<String, dynamic> toJson() => _$ItemsToJson(this);
}