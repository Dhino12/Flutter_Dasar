

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/DetailScreen.dart';
import 'package:flutter_app/data/TourismData.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wisata Bandung'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: tourismPlaceList.map((place) {
              return FlatButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(place: place);
                }));
              },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(place.imageAsset),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  place.name,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(place.location)
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        )
    );
  }

}