// To parse this JSON data, do
//
//     final cartsResponse = cartsResponseFromJson(jsonString);

import 'dart:convert';

CartsResponse cartsResponseFromJson(String str) =>
    CartsResponse.fromJson(json.decode(str));

String cartsResponseToJson(CartsResponse data) => json.encode(data.toJson());

class CartsResponse {
  int id;
  int userId;
  DateTime date;
  List<CartProduct> products;
  int v;

  CartsResponse({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
    required this.v,
  });

  factory CartsResponse.fromJson(Map<String, dynamic> json) => CartsResponse(
        id: json["id"],
        userId: json["userId"],
        date: DateTime.parse(json["date"]),
        products: List<CartProduct>.from(
            json["products"].map((x) => CartProduct.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "date": date.toIso8601String(),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "__v": v,
      };
}

class CartProduct {
  int productId;
  int quantity;

  CartProduct({
    required this.productId,
    required this.quantity,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
        productId: json["productId"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "quantity": quantity,
      };
}
