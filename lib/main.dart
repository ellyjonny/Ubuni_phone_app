import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/homepage.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

