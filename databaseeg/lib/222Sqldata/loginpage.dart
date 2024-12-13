import 'dart:async';
import 'package:databaseeg/222Sqldata/registrationpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1adminpage.dart';
import 'SQLHEPPP.dart';
import 'homepage.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState>formkey = GlobalKey();
  bool showpass = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<List<Map>> usertype(String email, String password) async
    {
      List<Map> data = await sqlhlpp.checklogin(email, password);
      return data;
    }
    void checkuser;();
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("LOGIN PAGE"),
        ),
        Padding(padding: EdgeInsets.all(8.0),
          child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'email ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
              validator: (username) {
                if (username == null || !username.contains('@') ||
                    !username.contains('.')) {
                  return "Enter a valid email";
                }
                else {
                  return null;
                }
              }
          ),

        ),
        Padding(padding: EdgeInsets.all(8.0),
          child: TextFormField(
              controller: password,
              obscureText: showpass,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(icon: Icon(
                      showpass ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showpass = !showpass;
                      });
                    },),
                  labelText: 'password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )

              ),
              validator: (pass) {
                if (pass == null || pass.length < 6) {
                  return "incorrect password";
                }
                else {
                  return null;
                }
              }
          ),

        ),
        //SizedBox(height: 20,),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () async
            {
              var valid = formkey.currentState!.validate();
              if (valid) {
                if (email.text == 'admin1123@gmail.com' && password.text == '111111') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => firstadmin()));
                }
                else {

                  List<Map>result = await usertype(email.text, password.text);
                  if (result.isNotEmpty) {
                    var check= await checklogin(email.text,password.text);
                   print ( "userfound");

                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => homepage()));
                  }
                  else {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => registrationpage11()));
                  }
                }
              };
            }, child:  Text("LOGIN"), ),),
                //   var data= await sqlhlpp.checklogin(email, password);
                //   if(data!=null) {
                //     Navigator.push(
                //         context, MaterialPageRoute(builder: (context) => homepage(data:data)));
                //   }
                //   else
                //   {
                //     if(!data.contains(email))
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>registrationpage11()));
                //   }
                // }
                //   var emil=email.text;
                //   var pass=password.text;
                //   var data=await sqlhlpp.checklogin(emil,pass);
                //   if(data.isNotEmpty)
                //     {
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage(data: '',)));
                //     }
                //   else{
                //     usertype(email.text,password.text);
                //   }
                //
                // }
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => homepage(data: '',)));


      Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextButton(onPressed: () async {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => registrationpage11()));
          }, child: Text("Create new account"),)
      ),


      ],
    ),)
    ,
    )
    ,
    );
  }

  checklogin(String text, String text2) {}
}

