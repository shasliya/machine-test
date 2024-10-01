import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/AHOTELHOOD/hotellog.dart';

class hotelreg extends StatefulWidget {
  const hotelreg({super.key});

  @override
  State<hotelreg> createState() => _hotellogState();
}

class _hotellogState extends State<hotelreg> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  bool checked=true;
  @override
  Widget build(BuildContext context) {
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
                  "Register Here",
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
                  child: (TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_city),
                        hintText: "Address",
                        labelText: "Address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    validator: (username) {
                      if (username!.isEmpty) {
                        return "This field is empty";
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),),
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
              CheckboxListTile(title: Text("Accept the terms and conditions"),

                value: checked, onChanged: (bool?value){
                setState(() {
                    checked=value!;
                  });
                },activeColor: Colors.black,
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
                          MaterialPageRoute(builder: (context) => hotellog()));
                    }
                  },
                  child: Text("REGISTER",style: TextStyle(color: Colors.teal[700]),),
                ),
              ),

              TextButton(
                  onPressed: () {},
                  child: Text(
                    "New registration",style: TextStyle(color: Colors.teal[700])
                  )),
            ],
          ),
        ),
      ),

    );
  }
}
