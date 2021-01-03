

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetsImages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/UserImage.jpg', width: 200,height: 200,),
      ),
    );
  }
}