import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  String basicAPI = "https://www.paa.ubuni.co.tz";
  
  Map<String, String> headers = {
    "content-Type": "application/json",
    "Accept": "application/json"
  };

  Future<http.Response> getHttp(String secondaryUrl) async {
    var url = Uri.parse(basicAPI + secondaryUrl);
    http.Response response = await http.get(url, headers: headers);
    return response;
  }

  Future<http.Response> postHttp(
      Map<String, dynamic> body, String secondaryUrl) async {
    print(body.toString());
    print("data");
    String bUrl = basicAPI.trim() + secondaryUrl.trim();
    var url = Uri.parse(bUrl);
    http.Response response =
        await http.post(url, headers: headers, body: json.encode(body));
    return response;
  }
}