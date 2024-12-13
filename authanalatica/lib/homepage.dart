import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homreState();
}

class _homreState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Main Screen",style: TextStyle(fontSize: 20),),),
    );
  }
}

