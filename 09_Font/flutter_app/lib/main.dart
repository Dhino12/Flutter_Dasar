import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: 'almond',
            primarySwatch: Colors.blue
        ),
        home: myScreen()
    );
  }
}

class myScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fonts'),
      ),
      body: Center(
        child: Text(
          'Custom Fonts',
          style: TextStyle(fontFamily: 'almond', fontSize: 30),
        ),
      ),
    );
  }

}