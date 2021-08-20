import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://www.paa.ubuni.co.tz";

class API {
  static Future getPhones() {
    var url = baseUrl + "/phones";
    return http.get(Uri.parse(url));
  }
}
