import 'package:flutter/cupertino.dart';

class PhonesModel {
  String name;
  String brand;
  int id;
  String image_url;

  PhonesModel({
    @required this.name,
    @required this.brand,
    @required this.image_url,
    @required this.id,
  });
  factory PhonesModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return PhonesModel(
      name: json['phonename'] ?? "",
      brand: json['Brandname'] ?? "",
      image_url: json['phoneimage'] ?? "",
      id: json['id']??"",
    );
  }
}
