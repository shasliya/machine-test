import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: bottomsheeteg(),));

}
class bottomsheeteg extends StatefulWidget {
  const bottomsheeteg({super.key});

  @override
  State<bottomsheeteg> createState() => _bottomsheetegState();
}

class _bottomsheetegState extends State<bottomsheeteg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(child: Text("show"),
          onTap: () => show(context),),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return ListView(
        children: [ListTile(
          title: Text("data1"),
          subtitle: Text("details1"),
        ),

          ListTile(
            title: Text("data2"),
            subtitle: Text("details2"),
          ),

          ListTile(
            title: Text("data3"),
            subtitle: Text("details3"),
          ),
        ],
      );
    },);
  }
}
