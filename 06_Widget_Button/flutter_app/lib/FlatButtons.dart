

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtons extends StatefulWidget{
  final String title;
  FlatButtons({Key key, this.title}): super(key: key);

  @override
  _StateCounter createState() => _StateCounter();
}

class _StateCounter extends State<FlatButtons>{
  int _counter = 0;

  void _incrementCounter(){
    setState( (){
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
                widget.title,
                style: TextStyle(fontSize: 15)
            )
        ),
        Center(
          child: Text(
            '$_counter',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
            child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              child: Text( 'Flat_Tombol', style: TextStyle(fontSize: 20.0)),
              onPressed: _incrementCounter,
            )
        ),
      ],
    );
  }
}