import 'package:flutter/cupertino.dart';

class PhonesModel {
  String phonename;
  String brandname;
  int id;
  String imageurl;

  PhonesModel({
    @required this.phonename,
    @required this.brandname,
    @required this.imageurl,
    @required this.id,
  });
  factory PhonesModel.fromJson(Map<String, dynamic> json) {
    return PhonesModel(
      phonename: json['name'] ?? "",
      brandname: json['Brand'] ?? "",
      imageurl: json['image_url'] ?? "",
      id: json['id'],
    );
  }
}
