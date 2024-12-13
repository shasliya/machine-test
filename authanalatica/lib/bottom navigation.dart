import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: bottomnavigation(),));
}

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int index=1;
  var screen=[ Text("Profile",style: TextStyle(color: Colors.blue[400],fontSize: 30,fontWeight: FontWeight.bold),),Text("chat",style: TextStyle(color: Colors.red[400],fontSize: 30,fontWeight: FontWeight.bold),),Text("call",style: TextStyle(color: Colors.yellow[400],fontSize: 30,fontWeight: FontWeight.bold),)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),),
      bottomNavigationBar:BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          // type: BottomNavigationBarType.fixed,
          //backgroundColor: Colors.teal[700],
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Profile",backgroundColor:Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chat",backgroundColor: Colors.yellow),
            BottomNavigationBarItem(icon: Icon(Icons.call,),label: "Call",backgroundColor: Colors.red),

          ]),
      body:Container(height: double.infinity,
        width: double.infinity,
        color: Colors.pink[100],
        child:Center(child: screen[index]),
      )
    );

  }
}
