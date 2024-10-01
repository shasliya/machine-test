import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Explorable Page View")),
        body: PageView(
          children: <Widget>[
            Container(
              color: Colors.red[100],
              child: Center(child: Text("Welcome to Page1 ",style: TextStyle(fontSize: 25,color: Colors.black),)),
            ),
            Container(
              color: Colors.green[100],
              child: Center(child: Text("hey I am  Page 2",style: TextStyle(fontSize: 25,color: Colors.black),)),
            ),
            Container(
              color: Colors.blue[100],
              child: Center(child: Text("I am Page 3 , I am waiting for you ",style: TextStyle(fontSize: 25,color: Colors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}
