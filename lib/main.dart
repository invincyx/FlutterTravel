import 'package:flutter/material.dart';
import 'package:travel_ui/screens/mainscreen.dart';
import 'package:travel_ui/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}
