import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridviewbuildereg(),
  ));
}

class gridviewbuildereg extends StatefulWidget {
  const gridviewbuildereg({super.key});

  @override
  State<gridviewbuildereg> createState() => _gridviewbuilderegState();
}

class _gridviewbuilderegState extends State<gridviewbuildereg> {
  var color = [Colors.yellow, Colors.red, Colors.green, Colors.purple];
  var iconss = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
  ];
  var data = [
    "account_balance",
    "add_alert",
    "access_alarm_rounded",
    "add_circle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          color: color[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconss[index]),
              Text(data[index]),
            ],
          ),
        );
      },
      itemCount: color.length,
    ));
  }
}
