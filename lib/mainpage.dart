import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("This is main page")),
    );
  }
}
