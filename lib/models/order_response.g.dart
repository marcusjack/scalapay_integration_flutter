// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return OrderResponse(
    token: json['token'] as String,
    expires: json['expires'] == null
        ? null
        : DateTime.parse(json['expires'] as String),
    checkoutUrl: json['checkoutUrl'] as String,
  );
}

Map<String, dynamic> _$OrderResponseToJson(OrderResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires?.toIso8601String(),
      'checkoutUrl': instance.checkoutUrl,
    };
