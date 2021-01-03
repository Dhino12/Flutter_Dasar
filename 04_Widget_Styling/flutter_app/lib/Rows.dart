

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Rows extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(icon: Icon(Icons.share), onPressed: null),
        IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
        IconButton(icon: Icon(Icons.thumb_down), onPressed: null),
      ],
    );
  }

}