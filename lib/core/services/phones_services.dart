import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';

const baseUrl = "https://www.paa.ubuni.co.tz";

class PhoneServices {
  static Future getPhones() {
    var url = baseUrl + "/phones";
    return http.get(Uri.parse(url));
  }

  static Future<PhonesModel> getPhone(String api) async {
    var urL = api;
    final res = await http.get(Uri.parse(urL));
    if (res.statusCode == 200) {
      return PhonesModel.fromJson(jsonDecode(res.body));
    } else {
      throw Exception("failed");
    }
  }
}
