import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: listbuilder(),));
}
class  listbuilder extends StatelessWidget {
  var firstletter=["F","A","I","H","A","A","A","M","F"];
  var name=["Facebook","A10 NETWORKS INC","Intel Corp","HP Inc","Advanced Micro Devices","Apple Inc","Amazon.com.Inc","Microsoft Corporation","Facebook",];
var values=['232343','265576','564365','65446','6556','64376','4553','25434','24334'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("List View Builder",
      style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,),
      body: ListView.builder(itemBuilder: (context,index)
          {
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundColor: Colors.blue,
                child: Text(firstletter[index],
                style: TextStyle(color:Colors.white) ),
                ),
                title: Text(name[index]),
                trailing:Text("\$ ${values[index]}"),
                    ),
              );},
              itemCount:firstletter.length
          ),
      );
  }
}
