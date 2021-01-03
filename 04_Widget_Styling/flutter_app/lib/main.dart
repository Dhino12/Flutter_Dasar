
import 'package:flutter/material.dart';
import 'package:flutter_app/Containers.dart';
import 'package:flutter_app/Rows.dart';
import 'Paddings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(), // memanggil FirstScreen
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('FirstScreen'),
        actions: [ IconButton( icon: Icon(Icons.search, color:Colors.white) ) ], // menambahkan icon
        leading: IconButton( icon: Icon(Icons.menu,color:Colors.white), ), // menambahkan icon drawer
      ), // toolbar
      body: Rows(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}