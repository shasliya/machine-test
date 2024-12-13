import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "What's your mobile number?",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Enter the mobile number where you can be contacted. No one will see this on your profile",
            style: TextStyle(fontSize: 10),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Mobile number",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "You may recive WhatsApp or SMS notifications from us for security and login purposes.",
            style: TextStyle(fontSize: 10),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 30,width:350 ,
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))),
                onPressed: (){}, child: Text("Next",style: TextStyle(color: Colors.white),))),
        SizedBox(
          height: 10,
        ),
        SizedBox(
            height: 30,width:350 ,
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))),
                onPressed: (){}, child: Text("Sign up with email",style: TextStyle(color: Colors.black),))),
      ],
    ));
  }
}
