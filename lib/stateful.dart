import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homepage.dart';

class stateful extends StatefulWidget {
  @override
  _stateful createState() => _stateful(); // WHHAT IS THISSSSSS????////
}
class _stateful extends State<stateful> {
  GlobalKey<FormState>formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 80),
                child: Text("Login Page",
                  style: TextStyle(fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 70, right: 70),
                child: TextFormField(//WHAT????
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "username",
                      labelText: "username",//WHAT????
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular((30),)
                      ),
                    ),
                    validator: (username) {//WHAT ?????
                      if (username!.isEmpty ||
                          !username.contains('@') ||
                          !username.contains('.')) {
                        return 'Invalid username';
                      }
                      else {
                        return null;
                      }
                    }
                ),),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          }
                          else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: "password",
                    labelText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return 'Invalid password';
                    }
                    else {
                      return null;
                    }
                  },
                ),),
              SizedBox(height: 30,),
              Padding(padding: const EdgeInsets.only(left: 50, right: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black45,
                  ), onPressed: () {
                  var valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  }
                },
                  child: Text("Login"),),),
              TextButton(
                onPressed: () {}, child: Text("Not a user? Create an accout"),)
            ],
          ),
        ),
      ),
    );
  }

}