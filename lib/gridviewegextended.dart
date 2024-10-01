import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: gridviewegextended(),));
}
class gridviewegextended extends StatefulWidget {
  const gridviewegextended({super.key});

  @override
  State<gridviewegextended> createState() => _gridviewegextendedState();
}
class _gridviewegextendedState extends State<gridviewegextended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,crossAxisSpacing:10,mainAxisSpacing: 10),//extent the view with the screen space, here max extend limit is 100
        children: [
          Container(child: Center(child: Text("asd"),),color:Colors.orange[300],),
          Container(child: Center(child: Text("dff"),),color:Colors.yellow[300],),
          Container(child: Center(child: Text("asd"),),color:Colors.red[300],),
          Container(child: Center(child: Text("fdg"),),color:Colors.green[300],),
          Container(child: Center(child: Text("gfd"),),color:Colors.pink[300],),
          Container(child: Center(child: Text("hfh"),),color:Colors.blue[300],),
        ],
      ),
    );
  }
}
