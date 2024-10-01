import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: listviewcustom(),));
}
class listviewcustom extends StatelessWidget {
var name=["amal","arun","balu","ammu",];
var phone=["23445","2343443","324344","12323",];
var image=["assets/images/mickey.png","assets/images/Timon.png","assets/images/Chrisbanks.png","assets/images/locked.png",];
 var color=[Colors.red,Colors.yellow,Colors.pink,Colors.green,] ;
@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
           title: Text(name[index]),
            trailing: Wrap(
              children: [
                Icon(Icons.edit),
          SizedBox(width: 6,
          ),
          Icon(Icons.delete),
            ],
          ),
          ),
        );

    },childCount: name.length),

));
  }
}