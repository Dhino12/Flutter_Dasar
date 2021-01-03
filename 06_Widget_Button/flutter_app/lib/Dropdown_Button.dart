

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dropdown_Button extends StatefulWidget{

  @override
  _FirstScreenState createState() => _FirstScreenState();

}

class _FirstScreenState extends State<Dropdown_Button>{
  String language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
          items: [
            DropdownMenuItem(
              value: 'Dart',
                child: Text('Dart')
            ),
            DropdownMenuItem(
              value: 'Kotlin',
                child: Text('Kotlin')
            ),
            DropdownMenuItem(
              value: 'Swift',
                child: Text('Swift')
            )
          ],
          value: language,
          hint: Text('Select Language'),
          onChanged: (String value){
            setState(() {
              language = value;
            });
          }
      ),
    );
  }
}