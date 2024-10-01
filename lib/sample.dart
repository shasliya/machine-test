import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: BoxDecoration(/*gradient:LinearGradient(
          colors: [
            Colors.black,
            Colors.white38,
            Colors.white30,
            Colors.white30,
            Colors.black54,
          ],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        )*/
        image: DecorationImage(image:AssetImage("assets/images/background.jpg"),fit: BoxFit.fill),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.lock_clock),
            Image(image: AssetImage("assets/images/locked.png"),height:200,width: 200,),
            Text("Flutter",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.green[800],
                )),
          ],
        ),
      ),
    );
  }
}
