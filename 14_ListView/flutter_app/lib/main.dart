import 'package:flutter/material.dart';
import 'package:flutter_app/ScrollingManualIncrement.dart';
import 'package:flutter_app/ScrollingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: ScrollingScreen()
    );
  }
}