import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: alertboxeg(),));
}
class alertboxeg extends StatefulWidget {
  const alertboxeg({super.key});

  @override
  State<alertboxeg> createState() => _alertboxegState();
}

class _alertboxegState extends State<alertboxeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        showDialog(context: context, builder: (context)
        {
          return AlertDialog(title: Text("Exit.."),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text("yes")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no")),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("cancel"))
            ],

          );
        });
      }, child: Text("Alertbox"),
      ),),);
  }
}
