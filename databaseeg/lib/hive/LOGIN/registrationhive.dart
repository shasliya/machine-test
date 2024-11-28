import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'loginhive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('logindata');
  runApp(MaterialApp(home:registrationhive() ,));
}

class registrationhive extends StatefulWidget {
  const registrationhive({Key? key}) : super(key: key);

  @override
  State<registrationhive> createState() => _registrationhiveState();
}

class _registrationhiveState extends State<registrationhive> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool showpass = true;




  void initState() {
    super.initState();
    // loadLogins();
  }
  Future<void>createRegister() async
  {
    String eemail=emailController.text;
    String ppass=passwordController.text;
    final logdata = Hive.box('logindata');
    if(logdata.containsKey(eemail)){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("user already exist")));
      return ;
    }
       if( eemail.isNotEmpty && ppass.isNotEmpty)
    {
        logdata.put(eemail, ppass);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>loginhive()));
        return;
      }
    else
      {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("fill all fields")));
return;
      }


    // await logdata.add(storage);
    // loadLogins();
  }
//   void loadLogins(){
//     final data=logdata.keys.map((id) {
//
//       final value=logdata.get(id);
//       return {'key':id,'useremail':value['email'],'userpass':value['password']};
//     }).toList();
//     setState(() {
// storage.reversed.toList();
//     });
//   }
  @override
  Widget build(BuildContext context) {
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
                    controller: emailController,
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
                        emailController == username;
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: 'username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: passwordController,
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
                        createRegister();
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>loginhive()));
                        // var data = await sqlhlpp.checkuser(emil);
                        // if (data.isNotEmpty) {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => loginpage()));
                        // } else {
                        //   adduser(email.text, name.text, password.text);
                        //
                        // }
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
