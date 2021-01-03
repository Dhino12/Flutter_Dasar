import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hi', style: TextStyle(fontSize: 40, color: Colors.white) ),
      // color: Colors.blue,
      padding: EdgeInsets.all(30), // padding
      margin: EdgeInsets.all(10), // margin
      width: 200,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [ BoxShadow(color: Colors.grey, offset: Offset(9,6), blurRadius: 10) ],
          border: Border.all(color: Colors.red, width: 2)
      ),
    );
  }

}