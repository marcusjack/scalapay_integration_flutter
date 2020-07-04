// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumerDetails _$ConsumerDetailsFromJson(Map<String, dynamic> json) {
  return ConsumerDetails(
    phoneNumber: json['phoneNumber'] as String,
    givenNames: json['givenNames'] as String,
    surname: json['surname'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ConsumerDetailsToJson(ConsumerDetails instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'givenNames': instance.givenNames,
      'surname': instance.surname,
      'email': instance.email,
    };
