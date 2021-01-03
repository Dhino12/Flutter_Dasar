


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget{

  @override
  _CheckBoxItem createState() => _CheckBoxItem();
}

class _CheckBoxItem extends State<CheckBoxes>{
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool values){
            setState(() {
              agree = values;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }

}