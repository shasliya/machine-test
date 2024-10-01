import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: registration(),
  ));
}

class registration extends StatefulWidget {
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.lightBlue,
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Register Here",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
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
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "email",
                    labelText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
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
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 50, right: 70),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = true;
                          } else {
                            showpass = false;
                          }
                        });
                      },
                      icon: Icon(
                        showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                  hintText: "confirm password",
                  labelText: "confirm password",
                ),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'Invalid password';
                  } else {
                    return null;
                  }
                },
              ),
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
                        MaterialPageRoute(builder: (context) => loginpage()));
                  }
                },
                child: Text("REGISTER"),
              ),
            ),
            /*   SizedBox(height: 50),
    Padding(padding: const EdgeInsets.only(left: 50,right: 70),
    child: ElevatedButton(style:
    ElevatedButton.styleFrom(
          backgroundColor: Colors.black45),
      onPressed: () {
      var valid=formkey.currentState!.validate();
      if (valid){
          Navigator.push(context,MaterialPageRoute(builder: (context) => mainpage()));
      }
      },
      child:Text("register"),

    ),),*/
            TextButton(
                onPressed: () {},
                child: Text(
                  "New registration",
                )),
          ],
        ),
      ),
    ));
  }
}
