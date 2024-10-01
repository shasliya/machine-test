import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: dismisible(),));
}
class dismisible extends StatefulWidget {
  const dismisible({super.key});

  @override
  State<dismisible> createState() => _dismisibleState();
}

class _dismisibleState extends State<dismisible> {
  var date=["date1","date2","date3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context,index){
        return Dismissible(
            background:Container(
          color: Colors.greenAccent,
        ),
          secondaryBackground:Container(color: Colors.redAccent,),
          key: ValueKey(date),
          child: Card(
            child: Container(color:Colors.yellow,height: 50,width: double.infinity,
            child: Text(date[index]),),
          ),
        );
      },
      itemCount: date.length,),
    );
  }
}
