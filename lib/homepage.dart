import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ubuni_phone_app/app_state/phones_state.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';
import 'package:ubuni_phone_app/models/phones_ui_model/phones_ui.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PhonesState>(
        builder: (BuildContext context, phonesState, child) {
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
        body: ListView(
          children: [
             Column(
              children: phonesState.phonesLists.length < 1
                  ? [Text("Loading...")]
                  : phonesState.phonesLists.map((PhonesModel phonesModel) {
                      return PhonesUI(
                          phonename: phonesModel.phonename,
                          brandname: phonesModel.brandname,
                          phoneimage: phonesModel.imageurl,
                          id: phonesModel.id);
                    }).toList())
          ],
        ),
      );
    });
  }
}
