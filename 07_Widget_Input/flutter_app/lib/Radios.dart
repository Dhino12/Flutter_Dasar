


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radios extends StatefulWidget{

  @override
  _RadioButton createState() => _RadioButton();

}

class _RadioButton extends State<Radios>{

  String language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisSize: MainAxisSize.max,
        children: [

          ListTile(
            leading: Radio(
              value: 'Dart',
              groupValue: language,
              onChanged: (String value){
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String value){
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio(
              value: 'Swift',
              groupValue: language,
              onChanged: (String value){
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Swift'),
          ),

        ],
      ),
    );
  }

}