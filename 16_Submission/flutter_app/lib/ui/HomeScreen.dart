

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Batik_App/model/data/BatikData.dart';

import 'DetailScreen.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Batik Apps'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          children: batikList.map((batik){
            return FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(dataBatik: batik,);
                }));
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(batik.imageUrls[0]),
                          )
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
                          child: Text(
                            batik.name,
                            style: TextStyle(fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Icon(Icons.arrow_right, color: Colors.blueAccent),
                          )
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

}