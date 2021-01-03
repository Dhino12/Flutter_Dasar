import 'package:flutter/cupertino.dart';

class Heading extends StatelessWidget{

  // nilai nya hanya dapat diisi melalui constructor
  final String text;  // ini adalah state // state text bersifat final

  const Heading({Key key, this.text}) : super(key: key); // lalu state text masuk ke constructor

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );

  }
}