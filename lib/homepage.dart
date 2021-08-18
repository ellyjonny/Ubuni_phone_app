import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ubuni Phone Store',
           style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.headline1,
                   color: Color(0xFF37B1CC),
                    fontSize: 25,
                  )),
        backgroundColor: Color(0xFFCCCCCC),
        leading: GestureDetector(
          onTap: () {
          },
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
      body: ListView(children: [
        
      ],),
    );
  }
}
