import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/core/services/phones_services.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';
import 'package:ubuni_phone_app/models/phones_ui/singlephone_ui.dart';

class SinglePhone extends StatefulWidget {
  final int idcheck;

  SinglePhone({@required this.idcheck});
  @override
  _SinglePhoneState createState() => _SinglePhoneState();
}

class _SinglePhoneState extends State<SinglePhone> {
  @override
  Widget build(BuildContext context) {
    String basicUrl = "https://www.paa.ubuni.co.tz/phones/${widget.idcheck}";

    return Scaffold(
      body: FutureBuilder<PhonesModel>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data.brandname);
            return Container(
                child: SinglePhonesUI(
              brand: snapshot.data.brandname,
              name: snapshot.data.phonename,
              image_url: NetworkImage(snapshot.data.image_url),
            ));
          }
          return Text("loading.....");
        },
        future: PhoneServices.getPhone(basicUrl),
      ),
    );
  }
}
