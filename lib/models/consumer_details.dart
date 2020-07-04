import 'package:json_annotation/json_annotation.dart';

import 'amount.dart';

part 'consumer_details.g.dart';

@JsonSerializable()
class ConsumerDetails {
  String phoneNumber;
  String givenNames;
  String surname;
  String email;

  ConsumerDetails({
    this.phoneNumber,
    this.givenNames,
    this.surname,
    this.email,
  });

  factory ConsumerDetails.fromJson(Map<String, dynamic> json) => _$ConsumerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ConsumerDetailsToJson(this);
}