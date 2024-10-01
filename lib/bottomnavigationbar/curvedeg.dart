import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: curvedeg(),));
}
class curvedeg extends StatefulWidget {
  const curvedeg({super.key});

  @override
  State<curvedeg> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<curvedeg> {
  int index=1;
  var screen=[
    Text("Profile"),Text("chat"),Text("call"),Text("contact")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
          index: 1,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
          Icon(Icons.settings,size:30,),
            Icon(Icons.chat, size: 30),
         Icon(Icons.call, size: 30),
         Icon(Icons.contact_page_outlined, size: 30)
          ]),

      body: Center(child: screen[index],),

    );
  }
}
