import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollingListGenerate extends StatelessWidget{
  final List<int> numberList = <int>[1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: List<Widget>.generate(numberList.length, (int index) =>
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black)
                ),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
          )
      ),
    );
  }

}