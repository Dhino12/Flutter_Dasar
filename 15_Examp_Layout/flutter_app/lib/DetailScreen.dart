
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FavoriteButton.dart';
import 'package:flutter_app/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  var informationTextStyle  = TextStyle(
      fontFamily: 'Roboto'
  );

  final TourismPlace place;
  DetailScreen({@required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView( // scroll vertical
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(place.imageAsset),
                  SafeArea(
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: (){
                                Navigator.pop(context);
                              }),
                          FavoriteButton()
                        ],
                      )
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almond',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text(
                          place.openDays,
                          style: informationTextStyle,
                        ),
                      ],
                    ),Column(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text(
                          place.openTime,
                          style: informationTextStyle,
                        ),
                      ],
                    ),Column(
                      children: [
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text(
                          place.ticketPrice,
                          style: informationTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  place.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal, // mengubah arah scroll
                  children: place.imageUrls.map((url){
                    return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'
                          ),
                        )
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

// CrossAxisAlignment = align horizontal Column
// mainAxisAlignment = align vertical column
// Kedua parameter ini juga berlaku sebaliknya untuk widget Row.