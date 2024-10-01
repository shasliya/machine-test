import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridviewbuilder.dart';
//import 'gridviewbuildereg.dart';
import 'listviewbuilder.dart';
import 'listviwecustolistdelegate.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: tabbareg(),));
}
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
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          actions: [Icon(Icons.search),
          PopupMenuButton(itemBuilder:( context){
            return [PopupMenuItem(child: Text("Invite"),),
              PopupMenuItem(child: Text("Refresh")),
              PopupMenuItem(child: Text("Logout")),
            ];
            },color: Colors.lightGreen[200],),],

          bottom:TabBar(labelColor:Colors.white,
              dividerColor: Colors.yellow[200],
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs:[
           Tab(child: Icon(Icons.camera_alt),),
           Tab(child: Text("Chat"),),
                Tab(child: Text("Status"),),
            Tab(child: Text("Call"),),
            ],)
        ),
        body: TabBarView(children: [
          Center(child: Icon(Icons.camera_alt),),
          Listbuilder(),
          gridviewbuildereg(),
          listcustomdelist(),
         // Gridviewbuilderexample(),
        ]),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message,color: Colors.teal,),),
      ),
    );
  }
}
