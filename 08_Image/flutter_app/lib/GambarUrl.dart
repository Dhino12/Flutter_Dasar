


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GambarUrl extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menampilkan Gambar Internet'),
      ),
      body: Center(
        child: Image.network(
          'https://i1.sndcdn.com/artworks-000452957274-8fsm0s-t500x500.jpg',
          width: 500,
          height: 500,
        ),
      ),
    );
  }

}