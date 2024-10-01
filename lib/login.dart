
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/loginpage.dart';

void main() {
  runApp(MaterialApp(home: loginpage(),));
}

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(color: Colors.blue,
          child: Column(
          children: [
          Padding(padding: const EdgeInsets.only(left: 50, top: 80)
              ,
              child: Text("Login page",
              style: TextStyle(fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w500),),),
                Padding(
              padding: const EdgeInsets.only(top: 50,left: 250,right: 250),
              child:TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),
              hintText:"username",
              labelText: "username",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
              ,),),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 250,right: 250),
              child:TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.password_sharp),
                suffixIcon: Icon(Icons.visibility_off_rounded),
                hintText:"password",
                labelText: "password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                ,),),
            ),
            SizedBox(height: 60,width: 80,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                onPressed:(){}, child: Text("login")),
          Padding(
            padding: const EdgeInsets.only(top: 50),
              child: TextButton(onPressed: (){},child: Text("Not a user? Create an account",style: TextStyle(color: Colors.black,fontSize: 12),)),)
              ],),

              ),
        );
    }
}