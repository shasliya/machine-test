import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instahomepage extends StatefulWidget {
  const instahomepage({super.key});

  @override
  State<instahomepage> createState() => _instahomepageState();
}

class _instahomepageState extends State<instahomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home page"),),
    );
  }
}
