import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';
import 'package:ubuni_phone_app/models/phones_ui/singlephone_ui.dart';


class SinglePhoneView extends StatefulWidget {
  @override
  _SinglePhoneViewState createState() => _SinglePhoneViewState();
}

class _SinglePhoneViewState extends State<SinglePhoneView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PhonesModel>(builder: (BuildContext context, phonesState,child){
    return Scaffold(
        appBar: AppBar(
          title: Text('Ubuni Phone Store',
              style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.headline1,
                color: Color(0xFF37B1CC),
                fontSize: 25,
              )),
          backgroundColor: Color(0xFFCCCCCC),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Color(0xFF37B1CC),
              size: 30,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Color(0xFF37B1CC),
                size: 30,
              ),
            )
          ],
        ),
        body:
        Container(
          child: SinglePhonesUI(
                  // name: phones[index].name,
                  // brand: phones[index].brand,
                  // image_url: NetworkImage(phones[index].image_url),
                ),));
});}}

