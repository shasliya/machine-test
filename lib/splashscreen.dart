import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'stateful.dart';
//import 'registration.dart';
void main() {
  runApp(MaterialApp(home: Splashscreen()));
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState()
  {
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>stateful()));
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg2.jpg"),
              fit: BoxFit.fill),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
            Image(image: AssetImage("assets/images/fbicon.png"),height:200,width: 200),
            Text("facebook",
              style: TextStyle(fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
           ),
          ],
      )
      ),
    );
  }
}
