import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget{
  String message = 'Hello this is Data from Screen 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Pindah ke Screen 2'),
          onPressed: () {
            // Pindah Screen
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecondScreen(message);  // kirim data
            }));
          },
        ),
      ),
    );
  }

}