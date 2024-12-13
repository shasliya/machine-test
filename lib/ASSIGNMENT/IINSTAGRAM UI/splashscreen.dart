import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ChooseAccount.dart';
void main()
{
  runApp(MaterialApp(home: istaui(),));
}
class istaui extends StatefulWidget {
  const istaui({super.key});

  @override

  State<istaui> createState() => _istauiState();
}

class _istauiState extends State<istaui> {
  void initState(){
    Timer (Duration(seconds: 5),()
    {
      Navigator.push(context,MaterialPageRoute(builder: (context)=>chooseaccount()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/images/SPLASH.jpg"),height: 100,width: 100,),
      ),
    );
  }
}
