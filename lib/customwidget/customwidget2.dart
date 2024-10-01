import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/customwidget/customwidgeteg.dart';
import '../cliperreg/clipereg.dart';
void main()
{
  runApp(MaterialApp(home: customresult(),));
}


class customresult extends StatefulWidget {
  const customresult({super.key});

  @override
  State<customresult> createState() => _customresultState();
}

class _customresultState extends State<customresult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customwidgeteg(
          img: Image(image: AssetImage("assets/images/fruit1.jpeg")), titl: Text("fruits"),icn: Icon(Icons.ac_unit),onpress: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>clipereg()));
      }),
    );
  }
}
