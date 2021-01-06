

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/myBatik.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              Container(
                child:
                Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 10),
                        width: 190,
                        height: 50,
                        child: Card(
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: 25,
                                  letterSpacing: 10,
                                  fontFamily: 'teko',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.brown,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/fotoku.png'),
                            radius: 67,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 220,
                        child: Card(
                          color: Colors.transparent,
                          child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      'Dhino Rahmad Kusuma',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontFamily: 'Cochin',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.amber,
                                                width: 1.5
                                            )
                                        )
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      'Mahasiswa',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Cochin',
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'About Me',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Diwan Mishafi',
                                      letterSpacing: 2,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 240),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                          color: Colors.amber,
                                          width: 2.5,
                                        )
                                    )
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 10,bottom: 10),
                                child: Text(
                                  'Saya Dhino Rahmad Kusuma seorang mahasiswa dari Universitas Darma Persada yang sangat antusias dengan mempelajari pemrogramman dan teknologi ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Arial',
                                    color: Colors.white,
                                    wordSpacing: 3,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

}