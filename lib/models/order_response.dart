
import 'package:json_annotation/json_annotation.dart';

part 'order_response.g.dart';

@JsonSerializable()

class OrderResponse{
  String token;
  DateTime expires;
  String checkoutUrl;

  OrderResponse({
    this.token,
    this.expires,
    this.checkoutUrl});

  factory OrderResponse.fromJson(Map<String, dynamic> json) => _$OrderResponseFromJson(json);
  Map<String, dynamic> toJson() => _$OrderResponseToJson(this);
  }