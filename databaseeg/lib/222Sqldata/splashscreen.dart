import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loginpage.dart';
void main()
{
  runApp(MaterialApp(home: splashscreen(),));
}
class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState()
  {
   Timer(Duration(seconds: 5),(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
   });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      color:Colors.blue[300],
      ) ,
    );
  }
}
