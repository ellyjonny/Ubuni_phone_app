import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubuni_phone_app/core/services/phones_services.dart';
import 'package:ubuni_phone_app/models/phones_model/phonesmodel.dart';
import 'package:ubuni_phone_app/models/phones_ui/phones_ui.dart';
import 'package:ubuni_phone_app/singlephone_ui.dart';


class Homepage extends StatefulWidget {
  @override
  createState() => _HomepageState();
}

class _HomepageState extends State {
  // ignore: deprecated_member_use
  var phones = new List<PhonesModel>();

  _getPhones() {
    API.getPhones().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        phones = list.map((model) => PhonesModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getPhones();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
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
        body: ListView.builder(
          itemCount: phones.length,
          itemBuilder: (context, index) {
            return InkWell(
                child: PhonesUI(
                  name: phones[index].name,
                  brand: phones[index].brand,
                  image_url: NetworkImage(phones[index].image_url),
                ),
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SinglePhoneView(),

                  ));
                });
          },
        ));
  }
}
