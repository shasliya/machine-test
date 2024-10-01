import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/AHOTELHOOD/hotelmain.dart';
import 'package:flutterproject/AHOTELHOOD/hotelreg.dart';

import '../login.dart';

class hotellog extends StatefulWidget {
  const hotellog({super.key});

  @override
  State<hotellog> createState() => _hotelregState();
}

class _hotelregState extends State<hotellog> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    bool showpass = true;

    return Scaffold(
      body:  Container(
        color: Colors.pink[100],
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "HotelhooD",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.teal[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 50, right: 70, left: 70),
                  child: (TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        labelText: "username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return "invalid username";
                      } else
                        return null;
                    },
                  ))),

              Padding(
                padding: const EdgeInsets.only(top: 50, right: 70, left: 70),
                child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
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
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return 'inavlid password';
                      } else {
                        return null;
                      }
                    }),
              ),

              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hotelmain()));
                    }
                  },
                  child: Text("REGISTER",style: TextStyle(color: Colors.teal[700]),),
                ),
              ),
              TextButton(
                  onPressed: () {
                    bool taped=true;
                    if(taped){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hotelreg()));
                    }
                  },
                  child: Text(
                    "New registration",style: TextStyle(color: Colors.teal[700]),
                  )),
            ],
          ),
        ),
      )
    );
  }
}
