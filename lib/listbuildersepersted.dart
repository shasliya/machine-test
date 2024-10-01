import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listbuildseperste(),
  ));
}

class listbuildseperste extends StatelessWidget {
  var name=["arun","varun","anju","ammu","anu","chinnu",];
  var color=[Colors.red,Colors.yellow,Colors.green,Colors.pink,Colors.redAccent,Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listbuilder seprated"),
      ),
      body:ListView.separated(
          itemBuilder: (context, index){
       return Card(
          color: color[index],
          child:ListTile(title: Text(name[index],),
          ) ,

        );
      },
    separatorBuilder: (context,index){
        return Divider(
          thickness: 5,
        color: Colors.red,
      );},
  itemCount: name.length),

    );
  }
}
