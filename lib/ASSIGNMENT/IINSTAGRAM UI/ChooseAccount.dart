import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/ASSIGNMENT/IINSTAGRAM%20UI/Accountlist.dart';
import 'package:flutterproject/ASSIGNMENT/IINSTAGRAM%20UI/movetoacccount.dart';
import 'package:flutterproject/ASSIGNMENT/IINSTAGRAM%20UI/signup%20page.dart';

import 'instahomepage.dart';
import 'instalogin.dart';

void main() {
  runApp(MaterialApp(
    home: chooseaccount(),
  ));
}

class chooseaccount extends StatefulWidget {
  const chooseaccount({super.key});

  @override
  State<chooseaccount> createState() => _chooseaccountState();
}

class _chooseaccountState extends State<chooseaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
                right: 240,
                top: 200,
                child:
                Container(height: 60,width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/CHIP.png"),
                        fit: BoxFit.fill)
                  ),

                )
            ),

            Positioned(
                right: 220,
                top: 280,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/capsi.jpeg"),
                  radius: 50,
                )),

            Positioned(
              right: 240,
              bottom: 300,
              child: Text(
                "jacob-w",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),

            Positioned(
              bottom: 260,
              right: 120,
              child: SizedBox(
                height: 30,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>instahomepage()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
              ),
            ),

            Positioned(
              bottom: 200,
                right: 210,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>instalogin()));
                }, child: Text("Switch Account"))),
            Positioned(
              bottom: 50,
                right: 150,
                child: Row(
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.grey,),),
                
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                }, child: Text("Sign up",style: TextStyle(color: Colors.black,)))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
