import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: backpresseg(),));
}
class backpresseg extends StatefulWidget {
  const backpresseg({super.key});

  @override
  State<backpresseg> createState() => _backpressegState();
}

class _backpressegState extends State<backpresseg> {
 Future<bool>showdailpop()async{
   return await showDialog(context: context, builder: (context)
   {
     return AlertDialog(
         title: Text("Exit..."),
       content: Text("Do you want to exit ?"),
     actions: [TextButton(onPressed: (){
       Navigator.of(context).pop(true);
     }, child: Text("Yes"),),
     TextButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("no"))],

     );

     });}

  @override
  Widget build(BuildContext context) {
   return WillPopScope( onWillPop: showdailpop,child: Scaffold(),);


  }

}
