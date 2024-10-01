import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
void main() {
  runApp(MaterialApp(
    home: listbuildercity(),
  ));
}
class listbuildercity extends StatelessWidget {
  var city = ["Delhi", "Finland", "London", "Vancouver", "New york"];
  var image = [
    "assets/images/india gate.webp",
    "assets/images/finland.jpeg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpeg",
    "assets/images/newyork.jpeg"
  ];
  var country = ["India", "Europe", "UK", "Canada", "America"];
  var Population = [
    "32.9 million",
    "5.54 million",
    "8.8 million",
    "2.6 million",
    "4.5 million",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(30))
 ),
          title: Center(
            child: Text(
              "Cities  Around World",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.deepOrange,
          elevation: 30,
          shadowColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.orange,
                  child: Wrap(
                    children:[ ListTile(
                        leading: Wrap(
                            children:[ Image(image:AssetImage(image[index]) , fit: BoxFit.cover,
                            height: 80,width: 100,),Padding(padding: EdgeInsets.only(left: 2,),), ],),
                title: Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 12),
                child: Text(
                city[index],
                style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 19),
                ),
                ),

                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1, left: 8),
                              child: Text(
                                country[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 5, top: 1, left: 8),
                              child: Text(
                                "Population: ${Population[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        )),
                 ], ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 15,
                  color: Colors.white,
                );
              },
              itemCount: city.length),
        ));
  }
}
