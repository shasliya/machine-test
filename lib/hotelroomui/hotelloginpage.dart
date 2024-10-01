import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/hotelroomui/mainusesliver.dart';
import 'package:flutterproject/hotelroomui/registrationpage.dart';

import '../login.dart';

class hotelloginpg extends StatefulWidget {
  const hotelloginpg({super.key});

  @override
  State<hotelloginpg> createState() => _loginpgState();
}

class _loginpgState extends State<hotelloginpg> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          color: Colors.cyan[700],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 80),
                child: Text(
                  "Login page",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    labelText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  validator: (username) {
                    if (username!.isEmpty) {
                      return "invalid username";
                    } else
                      return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "email address",
                    ),
                    validator: (email) {
                      if (email!.isEmpty ||
                          !email.contains('@') ||
                          !email.contains('.')) {
                        return 'invalid email';
                      } else {
                        return null;
                      }
                    },
                  ),
              ),
              SizedBox(
                height: 60,
                width: 80,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent),
                  onPressed: () {
                    var valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => mainusesliver()));
                    }
                  },
                  child: Text("login")),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(
                    onPressed: () {
                      var valid = checked;
                      if (valid) {}
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registratiopage()));
                    },
                    child: Text(
                      "Not a user? Create an account",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
