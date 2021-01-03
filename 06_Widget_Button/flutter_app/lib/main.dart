import 'package:flutter/material.dart';
import 'package:flutter_app/Dropdown_Button.dart';
import 'package:flutter_app/FlatButtons.dart';
import 'package:flutter_app/IconButtons.dart';
import 'package:flutter_app/RaisedButtons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Widget',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Button'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25.0, left: 30.0),
          child: Dropdown_Button(),
        ),
      )
    );
  }
}

/*
* disabledColor sebagai warna tombol ketika tidak bisa ditekan (disabled),
* disabledTextColor untuk warna text ketika tidak bisa ditekan (disabled), dan
* splashColor untuk warna button ketika tombol ditekan.
* */