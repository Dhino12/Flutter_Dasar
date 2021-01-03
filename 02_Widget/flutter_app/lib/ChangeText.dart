import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeText extends StatefulWidget{
  final String text;

  const ChangeText({Key keys, this.text}) : super(key: keys);

  @override
  _ChangeText createState() => _ChangeText();

}

class _ChangeText extends State<ChangeText>{

  double _ukuranText = 16.0;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: _ukuranText),
        ),
        RaisedButton(
            child: Text("Perbesar"),
            onPressed: (){
              setState(() {
                _ukuranText = 32.0;
              });
            }
        )
      ],
    );
  }
  
}