import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: listviewseperate(),));
}
class listviewseperate extends StatelessWidget {
var name=["List item1","List item2","List item3","List item4","List item5","List item6","List item7","List item8",
  "List item9","List item10","List item11","List item12","List item13","List item14","List item15","List item16","List item17","List item18","List item19",];
 var seperat=["seperator1","seperator2","seperator3", "seperator4","seperator5","seperator6","seperator7","seperator8","seperator9","seperator10",
   "seperator11","seperator12","seperator13","seperator14","seperator15","seperator16","seperator17","seperator18",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View.Seperated()",
      style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.green,),
      body: ListView.separated(itemBuilder:(context,index)
          {
            return Card(
              color: Colors.white,
              child: ListTile
                (title: Text(name[index],)),
            );

          },
          separatorBuilder: (context,index)
        {
          return Card(
          color: Colors.black12,
            child: ListTile(
              title: Text(seperat[index],
                style: TextStyle(color:Colors.white), ),
            )
          );
        },
          itemCount: name.length),
    );
  }
}
