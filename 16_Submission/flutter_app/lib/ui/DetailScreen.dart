import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Batik_App/model/Batik.dart';

class DetailScreen extends StatelessWidget{
  
  final Batik dataBatik;
  DetailScreen({@required this.dataBatik});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35)),
                    child: Image.network(
                      dataBatik.imageUrls[0],
                      height: 400,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SafeArea(
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back,color: Colors.white,),
                              onPressed: (){
                                Navigator.pop(context);
                              })
                        ],
                      )
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            dataBatik.name,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'almond',
                                color: Colors.blueAccent
                            ),
                          ),
                        )
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            dataBatik.asal,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.red,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.arrow_circle_up),
                              SizedBox(height: 8.0),
                              Text(dataBatik.harga_tertinggi)
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.arrow_circle_down),
                              SizedBox(height: 8.0),
                              Text(dataBatik.harga_rendah)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        dataBatik.makna,
                        style: TextStyle(
                            fontSize: 13
                        ),
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
        )
    );
  }

}