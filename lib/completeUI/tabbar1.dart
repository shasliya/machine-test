import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gridviewbuilder.dart';
import '../listviewbuilder.dart';
import '../listviwecustolistdelegate.dart';

class tabbareg extends StatefulWidget {
const tabbareg({super.key});
@override
State<tabbareg> createState() => _tapbaregState();
}
class _tapbaregState extends State<tabbareg> {
@override
Widget build(BuildContext context) {
return DefaultTabController(
length: 4,
child: Scaffold(
appBar:TabBar(labelColor:Colors.blue,
  dividerColor: Colors.yellow[200],
  indicatorColor: Colors.blue,
  unselectedLabelColor: Colors.black,
  tabs:[
    Tab(child: Text("home")),
    Tab(child: Text("item"),),
    Tab(child: Text("catagoris"),),
    Tab(child: Text("offer zone"),),
  ],),
body: TabBarView(children: [
Center(child: Icon(Icons.camera_alt),),
Listbuilder(),
gridviewbuildereg(),
listcustomdelist(),
],),
floatingActionButton: FloatingActionButton(onPressed: (){},
child: Icon(Icons.message,color: Colors.teal,),),
),
);
}
}
