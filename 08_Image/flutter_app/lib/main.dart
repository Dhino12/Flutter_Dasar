import 'package:flutter/material.dart';
import 'package:flutter_app/AssetsImage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white,),
          ),
          title: Text('Image'),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null)
        ],
        ),
        body: Center(
          child: AssetsImages(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      )
    );
  }
}