import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:scalapay_integration/models/configuration.dart';
import 'package:scalapay_integration/models/order.dart';
import 'package:scalapay_integration/models/order_response.dart';

class API {

  Future<Configuration> getConfiguration() async {
    Response response = await http.get(
      'https://staging.api.scalapay.com/v2/configurations',
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        HttpHeaders.authorizationHeader: "Bearer qhtfs87hjnc12kkos"
      },
    );

    final json = jsonDecode(response.body);
    return Configuration.fromJson(json);
  }

  Future<OrderResponse> orders() async {
    Response response = await http.post('https://staging.api.scalapay.com/v2/orders',
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer qhtfs87hjnc12kkos",
          HttpHeaders.acceptHeader: "application/json",
        },
        body: msg);

    final json = jsonDecode(response.body);
    return OrderResponse.fromJson(json);
  }
  Order order = Order.fromJson(map);

  static Map<String, dynamic> map = {
    "totalAmount": {"amount": "400.70", "currency": "EUR"},
    "consumer": {
      "phoneNumber": "0400000001",
      "givenNames": "Joe",
      "surname": "Consumer",
      "email": "test@scalapay.com"
    },
    "billing": {
      "name": "Joe Consumer",
      "line1": "Via della Rosa, 23",
      "suburb": "Montelupo Fiorentino",
      "postcode": "50056",
      "countryCode": "IT",
      "phoneNumber": "0400000000"
    },
    "shipping": {
      "name": "Joe Consumer",
      "line1": "Via della Rosa, 23",
      "suburb": "Montelupo Fiorentino",
      "postcode": "50056",
      "countryCode": "IT",
      "phoneNumber": "0400000000"
    },
    "items": [
      {
        "name": "T-Shirt",
        "category": "clothes",
        "subcategory": ["shirt", "long-sleeve"],
        "brand": "TopChoice",
        "gtin": "123458791330",
        "sku": "12341234",
        "quantity": 1,
        "price": {"amount": "10.00", "currency": "EUR"}
      },
      {
        "name": "Jeans",
        "category": "clothes",
        "subcategory": ["pants", "jeans"],
        "brand": "TopChoice",
        "gtin": "123458722222",
        "sku": "12341235",
        "quantity": 1,
        "price": {"amount": "20.00", "currency": "EUR"}
      }
    ],
    "discounts": [
      {
        "displayName": "10% Off",
        "amount": {"amount": "3.00", "currency": "EUR"}
      }
    ],
    "merchant": {
      "redirectConfirmUrl": "https://staging.portal.scalapay.com/success-url",
      "redirectCancelUrl": "https://staging.portal.scalapay.com/failure-url"
    },
    "merchantReference": "merchantOrder-1234",
    "taxAmount": {"amount": "3.70", "currency": "EUR"},
    "shippingAmount": {"amount": "10.00", "currency": "EUR"},
    "orderExpiryMilliseconds": 6000000
  };
  final msg = jsonEncode(map);

}
