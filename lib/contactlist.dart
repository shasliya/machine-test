import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: contactlist(),));
}
class contactlist extends StatelessWidget {
var name=["John Judah", "Bisola Akanbi", "Eghosa Iku", "Andrew Ndebuisi", "Arinze Dayo", "John Judah", "Wakara Zimbu",
  "Emaechi Chinedu", "Osaretin Igbinomwanhia"];
 var phone=["13464464", "65665665", "655652265", "54546566", "66565666", "656465464", "646878764", "26565959", "656566"];
var color=[Colors.blue,Colors.pink,Colors.orange,Colors.blue,Colors.green,Colors.red,Colors.yellow,Colors.blue,Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Contact List",
      style: TextStyle(color: Colors.white),),
        backgroundColor:Colors.blue,
      ),
      body: ListView.builder(itemBuilder: (context,index)
    {
      return Card(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(backgroundColor: color[index],child: Icon(Icons.person_rounded),),
          title: Text(name[index]),
          subtitle: Text(phone[index]),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      );
    },itemCount: name.length,
        ),);
  }
}
