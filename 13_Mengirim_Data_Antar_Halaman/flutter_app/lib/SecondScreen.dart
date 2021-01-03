import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FirstScreen.dart';

class SecondScreen extends StatelessWidget{
  final String message;

  SecondScreen(this.message); // menerima data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message),
              RaisedButton(
                child: Text('Kembali ke Screen 1'),
                onPressed: () {
                  // Pindah Screen
                  Navigator.pop(context);
                },
              ),
            ],
          )
      ),
    );
  }

}