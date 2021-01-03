import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaisedButtons extends StatefulWidget{
  final String  title;
  RaisedButtons({Key key, this.title}) : super(key: key);
  @override
  _StateCounter createState() => _StateCounter();
}

class _StateCounter extends State<RaisedButtons>{
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
          child: RaisedButton(
              child: Text('Tombol'),
              onPressed: _incrementCounter,
            )
        ),
      ],
    );
  }

}

