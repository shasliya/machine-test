import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main()
{
  runApp(MaterialApp(home: geidviewassignmt(),));
}
class geidviewassignmt extends StatefulWidget {
  const geidviewassignmt({super.key});
  @override
  State<geidviewassignmt> createState() => _geidviewassignmtState();
}
class _geidviewassignmtState extends State<geidviewassignmt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
        Align(alignment: Alignment.center,
          child: Text("Grid View Builder",
            style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w700,color: Colors.white),),
        ),

      backgroundColor: Colors.blue,centerTitle: true,),
      body: GridView(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
            crossAxisSpacing: 10,mainAxisSpacing: 10),

        children: [
          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(FontAwesomeIcons.car,color: Colors.black,),Text("Car",)
          ],),color: Colors.green[200],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.bicycle,color: Colors.black,),Text("Bicycle",)
            ],),color: Colors.blue[200],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_boat_outlined,color: Colors.black,),Text("Boat",)
            ],),color: Colors.blue[100],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bus_alert_outlined,color: Colors.black,),Text("Bus",)
            ],),color: Colors.brown[200],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.train_rounded,color: Colors.black,),Text("Train",)
            ],),color: Colors.purple[300],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_walk_rounded,color: Colors.black,),Text("Walk",)
            ],),color: Colors.green[100],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.contact_mail_rounded,color: Colors.black,),Text("Contact",)
            ],),color: Colors.brown[400],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.duo_outlined,color: Colors.black,),Text("Duo",)
            ],),color: Colors.green[400],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.hourglass_bottom_outlined,color: Colors.black,),Text("Hour",)
            ],),color: Colors.pink[800],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mobile_friendly_outlined,color: Colors.black,),Text("Mobile",)
            ],),color: Colors.purple[400],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.message,color: Colors.black,),Text("Message",)
            ],),color: Colors.brown[700],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.key,color: Colors.black,),Text("Key",)
            ],),color: Colors.green[100],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.wifi,color: Colors.black,),Text("Wifi",)
            ],),color: Colors.blue[100],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bluetooth,color: Colors.black,),Text("Blutooth",)
            ],),color: Colors.purple[200],),

          Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.faceSmile,color: Colors.black,),Text("Smile",)
            ],),color: Colors.blue[600],),
        ],
      ),
    );
  }
}
