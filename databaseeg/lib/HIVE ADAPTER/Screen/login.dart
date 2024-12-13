
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../Model/Usermodel.dart';
import 'home.dart';
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox('user');
  runApp(GetMaterialApp(home: login(),));
}


class login extends StatelessWidget {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cpassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child:Column(children: [
              Padding(
                padding:const EdgeInsets.only(left: 50,top: 80),
                child: Text("Login page",
                  style: TextStyle(fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
                child: TextField(
                  decoration: InputDecoration(
                      prefix: Icon(Icons.email),
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
              ),

              SizedBox(height: 40,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white54,foregroundColor: Colors.red)
                  ,onPressed: ()async{

              },
                  child: Text(" Login ")),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(onPressed: (){

                }, child: Text("Register")),
              )

            ],)
        )
    );
  }
  Future<void>findUser(List<User>userlist)async{
    final email=username.text.trim();
    final pass= password.text.trim();
    bool userFound=false;
    final validate=await validateLogin(email,pass);
     if(validate==true)
       {
         await Future.forEach(userlist, (user)
         {
           if(user.email==email&& user.password== pass)
             {
               userFound=true;
             }
           else
             {
               userFound=false;
             }
         });


         if(userFound==true)
           {
             Get.offAll(()=>homepage(email:email));
             Get.snackbar('Success', 'Login success',
             backgroundColor: Colors.green);
           }
         else
           {
             Get.snackbar('error', 'login failed',
             backgroundColor: Colors.red);
           }
       }
  }

  Future<bool>validateLogin(String email, String pass)async {
    if(email!='' && pass!='')
      {
        return true;
      }
    else
      {
        Get.snackbar('failed', 'fields cannot be empty');
        return false;
      }
  }

}
