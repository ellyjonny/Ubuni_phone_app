import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class PhonesUI extends StatelessWidget {
  var phoneimage;
  final String phonename;
  final String brandname;

  PhonesUI(
      {@required this.phonename,
      @required this.brandname,
      @required this.phoneimage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 300,
              width: MediaQuery.of(context).size.width / 1.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF37B1CC))),
              child: Image(fit: BoxFit.cover, image: phoneimage)),
          SizedBox(
            height: MediaQuery.of(context).size.height / 64,
          ),
          Text('$brandname',
              style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.headline4,
                color: Colors.black,
                fontSize: 18,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 64,
          ),
          Text('$phonename',
              style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.headline4,
                color: Colors.black,
                fontSize: 18,
              )),
        ],
      ),
    );
  }
}
