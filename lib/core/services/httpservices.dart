import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';

class HttpService {
  String basicAPI = "https://www.paa.ubuni.co.tz/phones";

  Map<String, String> headers = {
    "content-Type": "application/json",
    "Accept": "application/json"
  };

  Future<http.Response> getHttp(String basicAPI) async {
    var url = Uri.parse(basicAPI);
    http.Response response = await http.get(url, headers: headers);
    return response;
  }

  Future<List<PhonesModel>> GetPhones() async {
    http.Response response = await http.get(Uri.parse(basicAPI));

    List<PhonesModel> phonesList = [];
    if (response.statusCode == 200) {
      print("in server");
      for (dynamic data in json.decode(response.body)) {
        phonesList.add(PhonesModel.fromJson(data));
      }
      return phonesList;
    } else {
      print("fail");
      return phonesList;
    }
  }
}
