import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: mainusesliver(),
  ));
}

class mainusesliver extends StatefulWidget {
  const mainusesliver({super.key});

  @override
  State<mainusesliver> createState() => _mainusesliverState();
}

class _mainusesliverState extends State<mainusesliver> {
  var color = [Colors.red, Colors.blue, Colors.orange];
  var iconss = [Icons.hotel, Icons.restaurant, Icons.local_cafe];
  var review = [
    "220 reviews",
    "234 reviews",
    "125 reviews",
  ];
  var image = [
    "assets/images/hotel2.jpeg",
    "assets/images/hotel4.jpeg",
    "assets/images/hotelroo1.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: Colors.cyan[900],
            title: null,
            flexibleSpace: Stack(
              children: [Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Search Here...',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
      Positioned(child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
        ),
        //color: Colors.blue[100],
        height: 40,
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),
                hintText: "search something here.....",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt))),
      ),)
           ], ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.location_on,
                ),
              ),
              Text("Kochi")
            ],
            expandedHeight: 180,),
         /* SliverToBoxAdapter(
              child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
            ],
          )),*/
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                    ),
                    height: 80,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.hotel), Text("Hotel")],
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[200]),
                    height: 80,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.restaurant), Text("Resturent")],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.orange[400]),
                    height: 80,
                    width: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.local_cafe), Text("Cafe")],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                image[index],
                                height: 180,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              Positioned(
                                bottom: 20,
                                right: 20,
                                child: Container(
                                  width: 40,
                                  height: 25,
                                  color: Colors.white,
                                  //child: Center(child: Text("\$ ${price[index]}", style: TextStyle(color: Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );

                      /* ConstrainedBox(constraints: BoxConstraints(maxHeight: double.infinity),
                  child: Container(
                    child: SliverToBoxAdapter(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                Card(
                child: Column(
                children: [
                  Stack(
                  children: [Positioned(left: 10, right: 10,
                  child: Container(
                    child: Image(image: AssetImage("assets/images/hotelicon2.jpg")),
                  ),
                ), ]
          ),
              ],*/
                      //
                      //     ),
                      //   ),
                      // ],),],),
                      // // SliverList(delegate: SliverChildListDelegate([
                      //   Stack(children: [
                      //     Positioned(height: 50,width: 50,right: 20,
                      //       child: Card(
                      //         color: Colors.red,
                      //         child: ListTile(
                      //           //leading:
                      //           title: Icon(Icons.ac_unit),
                      //         ),
                      //       ),
                      //     ),
                      //     Positioned(height: 100,top: 50,
                      //       child: Card(
                      //         color: Colors.red,
                      //         child: ListTile(
                      //           //leading:
                      //           title: Icon(Icons.ac_unit),),
                      //       ),
                      //     ), Card(
                      //       color: Colors.red,
                      //       child: ListTile(
                      //         //leading:
                      //         title: Icon(Icons.ac_unit),
                      //       ),
                      //     ),
                      //
                      //   ]),

                      //],),
                      // SliverToBoxAdapter(
                      //    child: Container(
                      //      height: 50,
                      //      child: Text(""),
                      //    ),
                      //),

                      // ),),],),);

                      // SliverToBoxAdapter(
                      //     child:
                      //     // SliverList(
                      //     //   delegate: SliverChildBuilderDelegate((context, index) {
                      //         //return
                      //   Stack(
                      //           children: [
                      //             Card(
                      //               child: Column(
                      //                 children: [
                      //                   Stack(
                      //                       children: [Positioned(left: 10,right: 10,
                      //                         child: Container(
                      //                           child: Image(image: AssetImage("assets/images/hotelicon2.jpg")),
                      //                         ),
                      //                       ),]
                      //                   )
                      //                 ],
                      //               ),
                      //             )
                      //           ],
                      //);}),),
                      // ),

                      //],),

                      // return Column(
                      //   children: [
                      //     SizedBox(
                      //       height: 10,
                      //     ),

                      // Container(
                      //   child: ListTile(leading: Stack(
                      //     children: [Positioned(height: 400,width: double.infinity,
                      //       child: Container(
                      //           child: Image(image: AssetImage(image[index]),)),
                      //     ),
                      //   ]),),
                      // ),

                      //
                      // Card(
                      //       child: Container(
                      //         child: ListTile(
                      //           leading: Image.asset(
                      //           'assets/images/hotelicon.jpg',
                      //           height: 180,
                      //           width: double.infinity,
                      //           fit: BoxFit.cover,
                      //         ),
                      //           title: Column(
                      //               children: [
                      //             Text("Awesome rooms near Boddha",
                      //             ),
                      //             Center(child: Text("Boddha,Kathmandu",style: TextStyle(fontSize: 12),),),
                      //           ]
                      //           ),
                      //           subtitle: Row(
                      //             children: [
                      //               Icon(Icons.star, color: Colors.green),
                      //               Icon(Icons.star, color: Colors.green),
                      //               Icon(Icons.star, color: Colors.green),
                      //               Icon(Icons.star, color: Colors.green),
                      //               Icon(Icons.star_half, color: Colors.green),
                      //               Text(review[index])],
                      //           ),
                      //         ),
                      //       ),
                      //
                      //     ),
                      //
                      //         },
                      //         childCount: review.length,
                      //),),
                    }),
                  ),
                ],
              ),
            ),
          ),],),
      );
  }
}
