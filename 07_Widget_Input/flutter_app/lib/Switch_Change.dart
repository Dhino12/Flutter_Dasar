

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchChange extends StatefulWidget{

  @override
  _Switch createState() => _Switch();

}

class _Switch extends State<SwitchChange>{
  bool lightOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(
        value: lightOn,
        onChanged: (bool value){
          setState(() {
            lightOn = value;
          });
        },
      ),
    );
  }

}