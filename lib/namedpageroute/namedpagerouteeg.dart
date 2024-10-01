import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gridview.dart';
import '../listviewbuilder.dart';
void main()
{
  runApp(MaterialApp(home: namedpagerote(),
    routes:{"grid": (context)=>gridvieweg(),
      "list" :(context)=>Listbuilder(),
},),);
}
class namedpagerote extends StatefulWidget {
  const namedpagerote({super.key});

  @override
  State<namedpagerote> createState() => _namedpageroteState();
}

class _namedpageroteState extends State<namedpagerote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, "grid");
            }, child:Text("screeen1")),

        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, "list");
        }, child:Text("screeen2")),
          ],
        ),
      ),

    );
  }
}
