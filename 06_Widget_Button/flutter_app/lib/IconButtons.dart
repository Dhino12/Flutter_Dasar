

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtons extends StatefulWidget{
  final String title;
  IconButtons({Key key, this.title}): super(key: key);

  @override
  _StateCounter createState() => _StateCounter();
}

class _StateCounter extends State<IconButtons>{
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
            child: IconButton(
              icon: Icon(Icons.volume_up),
              tooltip: 'Increment Volume by 10',
              onPressed: _incrementCounter,
            )
        ),
      ],
    );
  }
}