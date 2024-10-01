import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cliperreg/clipereg.dart';
import 'gridcustomwidget.dart';
void main()
{
runApp(MaterialApp(home: gridcusresult(),));
}
class gridcusresult extends StatefulWidget {
  const gridcusresult({super.key});

  @override
  State<gridcusresult> createState() => _gridcusresultState();
}

class _gridcusresultState extends State<gridcusresult> {
  var name=["amal","arun","balu","ammu",];
  var phone=["23445","2343443","324344","12323",];
  var image=["assets/images/mickey.png","assets/images/Timon.png","assets/images/Chrisbanks.png","assets/images/locked.png",];
  var color=[Colors.red,Colors.yellow,Colors.pink,Colors.green,] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: gridcustomwid( lead:  Image(image: AssetImage("assets/images/fruit1.jpeg")) , titl: Text("amal"), subtitl: Text("amal"), trailng: Icon(Icons.ac_unit), colr: Colors.red, onpress: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>clipereg()));  },),
    );
  }
}
