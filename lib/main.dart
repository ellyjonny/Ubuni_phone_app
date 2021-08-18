import 'package:flutter/material.dart';
import 'package:ubuni_phone_app/app_state/phones_state.dart';
import 'package:ubuni_phone_app/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<PhonesState>(create: (_) => PhonesState())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Homepage(),
          ),
        ));
  }
}
