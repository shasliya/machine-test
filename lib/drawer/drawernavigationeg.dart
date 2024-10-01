import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: drawernavigationeg(),),);
}
class drawernavigationeg extends StatefulWidget {
  const drawernavigationeg({super.key});

  @override
  State<drawernavigationeg> createState() => _drawernavigationegState();
}

class _drawernavigationegState extends State<drawernavigationeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(backgroundColor: Colors.blue[100],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("shasliya"),
              accountEmail: Text("shasliyagmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/mickey.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/Shwz.png"),
                )
              ],decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/trondheim.jpeg"),fit: BoxFit.fill)
            ),
            ),
            ListTile(leading: Icon(Icons.home),
            title: Text("home"),),

            ListTile(leading: Icon(Icons.update_outlined),
              title: Text("update"),),

            ListTile(leading: Icon(Icons.send),
              title: Text("send"),),

            ListTile(leading: Icon(Icons.drafts_outlined),
            title: Text("drafts"),),

            ListTile(leading: Icon(Icons.logout_outlined),
              title: Text("logout"),),

          ],
        ),
      ),
      body: Center(child: Text("Flutter"),),
    );
  }
}
