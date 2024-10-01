import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/homepage.dart';
import 'package:flutterproject/hotelroomui/hotelloginpage.dart';

import 'hotelhomepage.dart';

/*  void main() {
  runApp(MaterialApp(
    home: registratiopage(),
  ));
}*/

class registratiopage extends StatefulWidget {
  //const registratiopage formkey=GlobalKey();


  @override
  State<registratiopage> createState() => _registratiopageState();
}

class _registratiopageState extends State<registratiopage> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  int selectedvalue=1 ;
 bool  checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Scrollbar(
          child:
          SingleChildScrollView(
            child: Container(
              //height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/cyanback.jpeg"),
                      fit: BoxFit.fill)),
              child: Form(
                //key: formkey,
                child: Column(
                  children: [
                    Padding(padding:const EdgeInsets.only(top: 30,),
                      child: Text
                        ("Please put your deatils here...",
                        style: TextStyle
                          (fontWeight: FontWeight.bold, fontSize: 25,fontStyle: FontStyle.italic,
                            color: Colors.cyan[900]),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Personal deatils",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.cyan[900],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Enter your name"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Full name",
                          //  labelText: "Enter your full name",
                        ),
                        validator: (username) {
                          if (username!.isEmpty) {
                            return "invalid username";
                          } else
                            return null;
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Enter your email"),
                      subtitle: TextFormField(
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


                    ListTile(
                      title: Text("Address"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Address",
                          //  labelText: "Enter your full address",
                        ),
                        validator: (address) {
                          if (address!.isEmpty) {
                            return "invalid username";
                          } else
                            return null;
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Room deatils",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.cyan[900],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Type of room"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //hintText: "Address",
                          labelText: "A/c or Non A/c",
                        ),
                        validator: (roomtype) {
                          if (roomtype!.isEmpty) {
                            return "invalid username";
                          } else
                            return null;
                        },
                      ),
                    ),
                    ListTile(
                      title: Text("Number of rooms and bed"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //hintText: "Address",
                          //labelText: "A/c or Non A/c",
                        ),
                        validator: (numbed) {
                          if (numbed!.isEmpty) {
                            return "invalid username";
                          } else
                            return null;
                        },
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Booking Deatils",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.cyan[900],
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text("Check in time and data"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          //hintText: "Address",
                          //labelText: "A/c or Non A/c",
                        ),
                        validator: (checktime) {
                          if (checktime!.isEmpty) {
                            return "invalid username";
                          } else
                            return null;
                        },
                      ),
                    ),

                    ListTile(
                      title: Text(
                        "Payment Deatils",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.cyan[900],
                        ),
                      ),
                    ),
                    RadioListTile<int>(
                      title: Text('UPI'),
                      value: 1,
                     groupValue: selectedvalue,
                      onChanged: (int? value) {
                        setState(() {
                          selectedvalue = value!;
                        });
                      },
                    ),
                    RadioListTile(
                        title:Text("Net Banking"),
                        value: 2, groupValue: selectedvalue,
                        onChanged: (int? value){
                      setState(() {
                        selectedvalue=value!;
                      });
                        }),
                    CheckboxListTile(title: Text("Accept the terms and conditions"),
                        value: checked, onChanged: (bool?value){
                      setState(() {
                        checked=value!;
                      });
                    },activeColor: Colors.black,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {

                        var valid = checked;
                        if (valid) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => hotelloginpg()));
                        }
                      },
                      child: Text("REGISTER"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
