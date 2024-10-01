import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/DAMMYPRODUCT/Dummyproduct.dart';
void main()
{

}
class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dammyproduct.map((product)=>
            GestureDetector(
              child:
              Column(
                children: [

                  Text(product["name"]),
                  Image(image: AssetImage(product["image"])),
                ],
              ),
              onTap: ()=>getproduct(context,product["id"]),
            )
        ).toList(),

      ),
    );
  }

  getproduct(BuildContext context,product) {
    Navigator.pushNamed(context, "secondscreen",arguments: product);
  }
}
