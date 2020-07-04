import 'package:json_annotation/json_annotation.dart';

import 'amount.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration {
  String type;
  String description;
  Amount minimumAmount;
  Amount maximumAmount;
  String numberOfPayments;
  String promotionUrl;
  List<String> locales;

  Configuration({
    this.type,
    this.description,
    this.minimumAmount,
    this.maximumAmount,
    this.numberOfPayments,
    this.promotionUrl,
    this.locales
  });

  factory Configuration.fromJson(Map<String, dynamic> json) => _$ConfigurationFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);
}
