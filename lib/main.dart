import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/utils/thems.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: myThemeData,
      home: HomeScreen(),
    );
  }
}
