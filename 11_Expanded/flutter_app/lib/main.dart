import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Rainbow'),
          ),
          body: Column(
            children: [
              Expanded(
                  child: Container(
                    color: Colors.red,
                  )
              ),
              Expanded(
                  child: Container(
                    color: Colors.orange,
                  )
              ),
              Expanded(
                  child: Container(
                    color: Colors.yellow,
                  )
              ),
              Expanded(
                  child: Container(
                    color: Colors.green,
                  )
              ),
              Expanded(
                  flex: 2, // mengatur flex
                  child: Container(
                    color: Colors.blue,
                  )
              ),
              Expanded(
                  child: Container(
                    color: Colors.indigo,
                  )
              ),
              Expanded(
                  child: Container(
                    color: Colors.purple,
                  )
              ),
            ],
          ),
        )
    );
  }
}
