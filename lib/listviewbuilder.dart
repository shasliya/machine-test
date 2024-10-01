
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: Listbuilder(),));
}
class Listbuilder extends StatelessWidget {
 var name=["amal","arun","anu","manu","chinnu"];
 var phone=["12345423","3434556","2434565","5467435","76454365"];
 var image=["assets/images/Chrisbanks.png","assets/images/mickey.png","assets/images/Shwz.png","assets/images/Timon.png","assets/images/Chrisbanks2.png"];
var color=[Colors.red,Colors.yellow,Colors.green,Colors.pink,Colors.cyan];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context,index){
        return Card(
          color: color[index],
          child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
        ),
      );

    },itemCount: name.length,),
    );
  }
}
