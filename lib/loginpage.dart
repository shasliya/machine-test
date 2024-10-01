import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Welcome",style: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontStyle: FontStyle.italic,
        ),),
      ),
    );
  }
}
