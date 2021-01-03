import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollingManualIncrement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text('1', style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text('2', style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text('3', style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text('4', style: TextStyle(fontSize: 25)),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text('5', style: TextStyle(fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }

}