// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return Merchant(
    redirectConfirmUrl: json['redirectConfirmUrl'] as String,
    redirectCancelUrl: json['redirectCancelUrl'] as String,
  );
}

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'redirectConfirmUrl': instance.redirectConfirmUrl,
      'redirectCancelUrl': instance.redirectCancelUrl,
    };
