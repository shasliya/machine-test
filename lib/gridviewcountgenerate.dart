import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: gridviewcount(),));
}
class gridviewcount extends StatefulWidget {
  const gridviewcount({super.key});

  @override
  State<gridviewcount> createState() => _gridviewcountState();
}

class _gridviewcountState extends State<gridviewcount> {
  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple];
  var iconss=[Icons.account_balance,Icons.add_alert,Icons.access_alarm_rounded,Icons.add_circle,];
  var data=["account_balance","add_alert","access_alarm_rounded","add_circle"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(iconss.length, (index){
        return Card(color:color[index],
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconss[index]),
        Text(data[index]),
          ],),

        );

    },)),
    );
  }
}
