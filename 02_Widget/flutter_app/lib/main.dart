import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final String _judul = ""; // ini adalah state
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: Scaffold(
        body:
        Center( // parent dari Button
          child: Text("Hello World"), // child dari center
        ),
      ),
    );
  }
}

/*
* MyApp di sini merupakan sebuah class yang menampilkan komponen Flutter ke layar atau
dikenal dengan Widgets.
* */

/*
* Ada pula widget yang dapat memiliki banyak anak atau bisa disebut children,
seperti Row, Column, ListView, GridView, dan semacamnya.
* */

/*
* State adalah data yang ada pada suatu widget. Widget menyimpan data yang nantinya dapat
berubah sesuai interaksi pengguna.
* */