import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotellog.dart';
void main()
{
  runApp(MaterialApp(home: hotelsplash(),));
}
class hotelsplash extends StatefulWidget {
  const hotelsplash({super.key});

  @override
  State<hotelsplash> createState() => _hotelsplashState();
}

class _hotelsplashState extends State<hotelsplash> {
  void initState()
  {
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>hotellog()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.pink[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HOTELHOOD",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,color: Colors.teal[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
