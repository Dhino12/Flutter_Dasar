

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainScreen.dart';

class LoginScreen extends StatefulWidget{
  LoginScreen({Key key}):super(key: key);
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen>{
  String _userName = "";
  final keyForm = GlobalKey<FormState>();
  TextEditingController _formUsername = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Batik Apps',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'almond',
                    color: Colors.white,
                  ),
                ),
              ),
              Form(
                key: keyForm,
                child:
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 16.0,horizontal: 50.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _formUsername,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.people),
                            hintText: 'Masukan Nama',
                            hintStyle: TextStyle(color: Colors.white)
                        ),
                        validator: (String value){
                          if(value.isEmpty){
                            return 'Nama/Username harus diisi';
                          }
                          return null;
                        },
                        onChanged: (String value){
                          setState(() {
                            this._userName = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: _password,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: 'Masukan Password',
                            hintStyle: TextStyle(color: Colors.white)
                        ),
                        validator: (String value){
                          if(value.isEmpty){
                            return 'Password harus diisi';
                          }else{
                            return null;
                          }
                        },
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: FlatButton(
                    color: Colors.white,
                    textColor: Colors.blueAccent,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: Colors.lightBlueAccent,
                    minWidth: 150,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('Login'),
                    onPressed: (){
                      if(keyForm.currentState.validate()){
                        return showDialog(
                            context: context,
                            builder: (BuildContext contexts){
                              return AlertDialog(
                                title: Text('Hallo'),
                                content: Text('Selamat Datang $_userName'),
                                actions: [
                                  FlatButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text('Batal')
                                  ),
                                  FlatButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return MainScreen();
                                        }));
                                      },
                                      child: Text('Lanjut')
                                  ),
                                ],
                              );
                            }
                        );
                      }
                    },
                  )
              ),
            ],
          ),
        )
    );
  }
}