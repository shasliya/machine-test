import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/DAMMYPRODUCT/Dummyproduct.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dammyproduct.firstWhere((product)=>product["id"]==id);
    return Scaffold(
      body:Container(color: Colors.yellow[100],
        child:Column(
          children: [
            Text("${data["name"]}"),
Image(image: AssetImage("${data["image"]}")),
            Text("${data["description"]}"),


          ],
        ),
      ) ,
    );
  }
}
