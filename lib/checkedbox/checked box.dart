import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: checkedboxeg(),));
}
class checkedboxeg extends StatefulWidget {
  const checkedboxeg({super.key});

  @override
  State<checkedboxeg> createState() => _checkedboxegState();
}

class _checkedboxegState extends State<checkedboxeg> {
  bool checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(checkColor: Colors.blue[100],
            value: checked, onChanged:(bool ? value){
          setState(() {
            checked=value!;//not null

          });
        }),
      ),
    );
  }
}
