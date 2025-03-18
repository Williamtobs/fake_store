// To parse this JSON data, do
//
//     final cartsResponse = cartsResponseFromJson(jsonString);

import 'dart:convert';

List<CartsResponse> cartsResponseFromJson(String str) =>
    List<CartsResponse>.from(
        json.decode(str).map((x) => CartsResponse.fromJson(x)));

String cartsResponseToJson(List<CartsResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartsResponse {
  int id;
  int userId;
  List<Product> products;

  CartsResponse({
    required this.id,
    required this.userId,
    required this.products,
  });

  factory CartsResponse.fromJson(Map<String, dynamic> json) => CartsResponse(
        id: json["id"],
        userId: json["userId"],
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
      };
}
