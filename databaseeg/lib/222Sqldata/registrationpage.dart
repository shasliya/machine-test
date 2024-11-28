import 'package:datbasesql/222Sqldata/SQLHEPPP.dart';
import 'package:datbasesql/222Sqldata/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class registrationpage11 extends StatefulWidget {
  const registrationpage11({Key? key}) : super(key: key);

  @override
  State<registrationpage11> createState() => _registrationpage11State();
}

class _registrationpage11State extends State<registrationpage11> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

  bool showpass = true;

  // String? email, password;

  @override
  Widget build(BuildContext context) {
    void adduser(String email, String name, String password) async {
      var id = await sqlhlpp.addnewuser(email, name, password);
      {
        if (id != null) {

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => loginpage()));
         print( "registration complteted");
        } else {
          print("Registration not completed");
        }
      }
    }

    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("REGISTARATION PAGE"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        labelText: 'email..',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (username) {
                      if (username == null ||
                          !username.contains('@') ||
                          !username.contains('.')) {
                        return "Enter a valid email";
                      } else {
                        email == username;
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      labelText: 'username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: password,
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          icon: Icon(showpass
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              showpass = !showpass;
                            });
                          },
                        ),
                        labelText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (pass) {
                      if (pass == null || pass.length < 6) {
                        return "incorrect password";
                      } else {
                        return null;
                      }
                    }),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(
                          icon: Icon(showpass
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              showpass = !showpass;
                            });
                          },
                        ),
                        labelText: 'confirm password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (pass) {
                      if (pass == null || pass.length < 6) {
                        return "incorrect password";
                      } else {
                        return null;
                      }
                    }),
              ),
              //SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      var valid = formkey.currentState!.validate();
                      if (valid) {
                        var emil = email.text;
                        var data = await sqlhlpp.checkuser(emil);
                        if (data.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        } else {
                          adduser(email.text, name.text, password.text);

                        }
                      }
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => loginpage()));
                    },
                    child: Text("REGISTER")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
