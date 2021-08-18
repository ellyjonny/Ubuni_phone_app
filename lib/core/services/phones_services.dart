import 'dart:convert';

import 'package:http/http.dart';
import 'package:ubuni_phone_app/core/services/httpservices.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';

class PhonesServices {
  // ignore: non_constant_identifier_names
  Future<List<PhonesModel>> GetPhones() async {
    String secondaryUrl = "/phones";
    Response response = await HttpService().getHttp(secondaryUrl);
    print(response);
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
