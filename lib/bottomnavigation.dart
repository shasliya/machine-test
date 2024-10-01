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
  var screen=[
    Text("Profile"),Text("chat"),Text("call"),Text("contact")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        BottomNavigationBarItem(icon: Icon(Icons.contact_page_outlined,),label:"Contact",backgroundColor: Colors.pink),
      ]),

      body: Center(child: screen[index],),

    );
  }
}
