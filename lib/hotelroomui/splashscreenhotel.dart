import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/hotelroomui/hotelloginpage.dart';

void main() {
  runApp(MaterialApp(
    home: splashscreen(),
  ));
}

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void initState()
  {
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>hotelloginpg()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
            color: Colors.cyan[900]),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage("assets/images/hotelicon.jpg"),
                    height: 100,
                    width: 100),
                Text(
                  "Collect moments...",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ],
            )));
  }
}
