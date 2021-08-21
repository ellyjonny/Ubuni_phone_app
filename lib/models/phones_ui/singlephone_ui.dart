import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SinglePhonesUI extends StatelessWidget {
  final image_url;
  final String name;
  final String brand;

  SinglePhonesUI(
      {@required this.name, @required this.brand, @required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/32),
                Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width / 1.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF37B1CC))),
                    child: Image(fit: BoxFit.cover, image: image_url)),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height /500,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$brand',
                  style: GoogleFonts.amiri(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: Color(0xFF37B1CC),
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: MediaQuery.of(context).size.width / 30,
              ),
              Text('$name',
                  style: GoogleFonts.amiri(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: Color(0xFF37B1CC),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
