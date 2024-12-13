import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
void main()
{
  runApp(MaterialApp(home:splashScreen() ,));
}
class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState()
  {
    Timer(Duration(seconds: 5),(){
      Navigator.push(context,MaterialPageRoute(builder:(context)=>home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(color: Colors.green[400],),
        child: Center(child: Text("SplashScreen",style: TextStyle(color: Colors.blue),)),

      ),
    );
  }
}
