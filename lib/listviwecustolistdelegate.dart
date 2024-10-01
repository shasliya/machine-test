import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listcustomdelist(),
  ));
}

class listcustomdelist extends StatelessWidget {
  var name = ["amal", "arun", "balu", "ammu", "chinnu"];
  var phone = ["23445", "2343443", "324344", "12323", "123234"];
  var image = [
    "assets/images/mickey.png",
    "assets/images/Timon.png",
    "assets/images/Chrisbanks.png",
    "assets/images/locked.png",
    "assets/images/fbicon.png"
  ];
  var color = [
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom(
            childrenDelegate:
                SliverChildListDelegate(List.generate(name.length, (index) {
      return Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
          title: Text(name[index]),
          subtitle: Text(phone[index]),
        ),
      );
    }))));
  }
}
