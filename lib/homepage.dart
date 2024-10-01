import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: homepage(),));
}
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          Card(color: Colors.red[200],
          child: ListTile(
            leading: Image(image: AssetImage("assets/images/fbicon.png"),),
            title: Text("Arun"),
            subtitle:Text( "9876452398"),
            trailing: Icon(Icons.call),
          ),),
          Card(
            color: Colors.yellow[100],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/locked.png"),),//get image in  round shape
              title: Text("varun"),
              subtitle: Text("1243568765"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.green[200],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/bg2.jpg"),),
              title: Text("anu"),
              subtitle: Text("2143356356"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.pink[200],
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/fbicon.jpg"),),
              title: Text("ammu"),
              subtitle: Text("2144556356"),
              trailing: Icon(Icons.call),
            ),
          )
        ],
      )
    );
}
}
