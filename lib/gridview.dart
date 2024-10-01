import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: gridvieweg(),));
}
class gridvieweg extends StatefulWidget {
  const gridvieweg({super.key});
  @override
  State<gridvieweg> createState() => _gridviewState();
}
class _gridviewState extends State<gridvieweg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [
          Container(child: Center(child: Text("abc",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),),),color: Colors.pink[300],),
          Container(child: Center(child: Text("bcd"),),color: Colors.green[300],),
          Container(child: Center(child: Text("cde"),),color: Colors.yellow[300],),
          Container(child: Center(child: Text("def"),),color: Colors.cyan[300],),
          Container(child: Center(child: Text("efg"),),color: Colors.blue[300],),
          Container(child: Center(child: Text("fgh"),),color: Colors.orange[300],),
        ],
      ),
    );
  }
}
