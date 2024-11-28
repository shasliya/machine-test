//import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Emailvalidator.dart';
void main(){
  runApp(GetMaterialApp(home: Rgpg(),));
}
class Rgpg extends StatelessWidget {
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
                child: Text("Registration pg",
                  style: TextStyle(fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
                child: TextField(
                  decoration: InputDecoration(
                      prefix: Icon(Icons.person),
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 70,right: 70),
                child: TextField(
                  decoration: InputDecoration(
                      prefix: Icon(Icons.password),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Conform password",
                      labelText: "Conform password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
              ),

              SizedBox(height: 40,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white54,foregroundColor: Colors.red)
                  ,onPressed: (){},
                  child: Text(" Register ")),

              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(onPressed: (){}, child: Text("Login")),
              )

            ],)
        )
    );
  }
  void validateSignUp()async{
    final email = username.text.trim();
    final pass = password.text.trim();
    final cpass = cpassword.text.trim();

    final emailValidationResult = emailvalidator.validate(email);
    if (email !=''&& pass !=''&& cpass!=''){
      if(emailValidationResult == true){
        final passValidationResult = checkPassword(pass, cpass);
        {
          if(passValidationResult==true)
            {
              
            }
        }
      }
      else{
        Get.snackbar('error','provide a validate email');
      }
    }
    else{

    }
  }
  bool checkPassword(String pass,String cpass)
  {
    return true;
  }
}