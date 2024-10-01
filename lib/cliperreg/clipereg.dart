import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: clipereg(),));
}
class clipereg extends StatefulWidget {
  const clipereg({super.key});

  @override
  State<clipereg> createState() => _cliperegState();
}

class _cliperegState extends State<clipereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(child: Container(child: Image(image: AssetImage("assets/images/veggies1.webp")),)),
          ClipOval(child: Container(child: Image(image: AssetImage("assets/images/veggies1.webp")),),
          ),
          ClipRRect(
              borderRadius:BorderRadius.circular(100),
              child: Container(child: Image(image: AssetImage("assets/images/veggies1.webp")),)),

          ClipRRect(
              borderRadius:BorderRadius.circular(30),
              child: Container(child: Image(image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.ewS343PDdCHjdBIsgnGePgHaEo&pid=Api&P=0&h=180")
              //EXAMPLE FOR NETWORK IMAGE
              ),)),
    ClipOval(child: Container(child: Image(image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.ewS343PDdCHjdBIsgnGePgHaEo&pid=Api&P=0&h=180")),),
    ),],
      ),
    );
  }
}
