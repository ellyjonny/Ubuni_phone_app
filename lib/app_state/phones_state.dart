import 'package:flutter/cupertino.dart';
import 'package:ubuni_phone_app/core/services/httpservices.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';

class PhonesState extends ChangeNotifier {
  List<PhonesModel> _phonesList;

  List<PhonesModel> get phonesLists => _phonesList ?? [];

  Future onGetPhones() async {
    _phonesList = await HttpService().GetPhones();
    notifyListeners();
  }
}
