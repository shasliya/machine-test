
import 'package:authanalatica/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MaterialApp(
    home: formvalidation(),
  ));
}

class formvalidation extends StatefulWidget {
  @override
  State<formvalidation> createState() => _registrationState();
}

class _registrationState extends State<formvalidation> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.lightBlue[100],
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "form validation",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 50, right: 70, left: 70),
                    child: (TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "name",
                          labelText: "name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      validator: (username) {
                        if (username!.isEmpty) {
                          return "invalid name";
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
                            MaterialPageRoute(builder: (context) => home()));
                      }
                    },
                    child: Text("Form Validated"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
