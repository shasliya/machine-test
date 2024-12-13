import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/ASSIGNMENT/IINSTAGRAM%20UI/instalogin.dart';

class accountlist extends StatefulWidget {
  const accountlist({super.key});

  @override
  State<accountlist> createState() => _accountlistState();
}

class _accountlistState extends State<accountlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose another account"),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>instalogin()));
            }, child: Text("shasliya__"))

          ],
        ),
      ),
    );
  }
}
