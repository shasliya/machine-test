import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: gridviewextend(),));
}
class gridviewextend extends StatefulWidget {
  const gridviewextend({super.key});

  @override
  State<gridviewextend> createState() => _gridviewextendState();
}

class _gridviewextendState extends State<gridviewextend> {
  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple,Colors.pink,Colors.cyan];
  var iconss=[Icons.account_balance,Icons.add_alert,Icons.access_alarm_rounded,Icons.add_circle,Icons.ac_unit,Icons.insert_comment_rounded];
  var data=["account balance","add alert","access alarm rounded","add circle","ac_unit","insert comment rounded"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 200,
      children: List.generate(iconss.length, (index) {
        return Card(
          color: Colors.cyan,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconss[index],),
              Text(data[index]),
            ],
          ),
        );
      }),),
    );
  }
}
