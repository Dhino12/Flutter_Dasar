

import 'package:flutter/cupertino.dart';

class Columns extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Sebuah Judul', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        Text('Lorem')
      ],
    );
  }
}