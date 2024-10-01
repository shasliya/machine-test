import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(MaterialApp(home: gridviewcustm(),));
}
class gridviewcustm extends StatefulWidget {
  const gridviewcustm({super.key});

  @override
  State<gridviewcustm> createState() => _gridviewcustmState();
}

class _gridviewcustmState extends State<gridviewcustm> {
  var color=[Colors.yellow,Colors.red,Colors.green,Colors.purple,Colors.pink,Colors.cyan];
  var iconss=[Icons.account_balance,Icons.add_alert,Icons.access_alarm_rounded,Icons.add_circle,Icons.ac_unit,Icons.insert_comment_rounded];
  var data=["account balance","add alert","access alarm rounded","add circle","ac_unit","insert comment rounded"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
          childrenDelegate: SliverChildBuilderDelegate((context,index){

            return Card(
            color: Colors.green[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(iconss[index]),
                Text(data[index],)],
              ),
            );
    },childCount: iconss.length),


      ),);
  }
}
