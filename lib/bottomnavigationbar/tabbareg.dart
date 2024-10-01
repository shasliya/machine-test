import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: tabbarnavigationbar(),));
}
class tabbarnavigationbar extends StatefulWidget {
  const tabbarnavigationbar({super.key});

  @override
  State<tabbarnavigationbar> createState() => _tabbarnavigationbarState();
}

class _tabbarnavigationbarState extends State<tabbarnavigationbar> {
 int index=1;
 var screen=[Text("Profile"),Text("chat"),Text("call"),Text("contact")];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        title: Text("App bar "),
        actions: [Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("invite"),),
                PopupMenuItem(child: Text("refresh")),
                PopupMenuItem(child: Text("Logout")),
              ];
            },color: Colors.red[100],


          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.message,color: Colors.teal,),),
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
