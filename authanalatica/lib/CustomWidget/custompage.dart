import 'package:flutter/material.dart';

class Cutmpage extends StatelessWidget {
  final Color clr;
  final Icon onestar;
  final Icon  twostar;
  final Icon threestar;
  final Icon fourstar;
  final Icon fivestar;

  Cutmpage({super.key, required this.onestar, required this.twostar, required this.threestar, required this.fourstar, required this.fivestar, required this.clr});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Card(color:clr ,
        child: Column(
          children: [
            Container(child: onestar,),
            Container(child:twostar ,),
            Container(child:threestar ,),
            Container(child:fourstar ,),
            Container(child:fivestar ,),
          ],
        ),
      ),
    );
  }
}