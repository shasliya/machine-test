import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: instalogin(),));
}
class instalogin extends StatefulWidget {
  const instalogin({super.key});

  @override
  State<instalogin> createState() => _instaloginState();
}

class _instaloginState extends State<instalogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 150,
            ),
            Image(
                    image: AssetImage(
                        "assets/images/Chrisbanks.png"),height: 60,width: 60,),

    SizedBox(
      height: 40,
    ),
                Padding(
                  padding: const EdgeInsets.only(right: 40,left: 40),
                  child: TextFormField(decoration: InputDecoration(
                    hintText: "User name,email or mobile number",
                                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),style: TextStyle(color: Colors.grey),),
                ),
            //),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40,left: 40),
              child: TextFormField(decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),style: TextStyle(color: Colors.grey),),
            ),
            //),
            SizedBox(
              height: 20,
            ),

              SizedBox(
                  height: 30,width:350 ,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))),
                      onPressed: (){}, child: Text("Log in",style: TextStyle(color: Colors.white),))),
            //),
            SizedBox(
              height: 10,
            ),

    TextButton(onPressed: (){}, child: Text("Forgot password")),


            SizedBox(
              height: 150,
            ),

              SizedBox(
                height: 30,width:300 ,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor:  Colors.blue, side:BorderSide(color: Colors.blue)),

                      onPressed: (){}, child: Text("Create new account"))),

            SizedBox(
              height: 10,
            ),
                Text("Meta",style: TextStyle(color: Colors.grey),),

            
            
          ],
        ),
      ),
    );
  }
}
