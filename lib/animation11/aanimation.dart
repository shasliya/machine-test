import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main()
{
  runApp(MaterialApp(home: animatt(),));
}
class animatt extends StatefulWidget {
  const animatt({super.key});

  @override
  State<animatt> createState() => _animattState();
}

class _animattState extends State<animatt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Lottie.asset("assets/animations/animation1.json"),
      ),
    );
  }
}
