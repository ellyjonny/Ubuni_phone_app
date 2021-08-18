import 'package:flutter/cupertino.dart';
import 'package:ubuni_phone_app/core/services/phones_services.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';


class EventState extends ChangeNotifier {
  List<PhonesModel> _phonesList;

  List<PhonesModel> get phonesLists => _phonesList ?? [];

Future  onGetEvent() async {
    _phonesList = await PhonesServices().GetPhones();
    notifyListeners();
  }
}