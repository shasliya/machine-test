
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EcommerceApp/DetailsPage.dart';

void main() {
  runApp(MaterialApp(
    home: ecommerceapp(),
  ));
}

class ecommerceapp extends StatefulWidget {
  const ecommerceapp({super.key});

  @override
  State<ecommerceapp> createState() => _farmersfreshzoneState();
}

class _farmersfreshzoneState extends State<ecommerceapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:Colors.green ,
            unselectedItemColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: "Cart",),
              BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Account",),
            ]),

        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 150,
              backgroundColor: Colors.green,
              flexibleSpace: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 50),
                        child: Text(
                          "A E-Commerce App",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(5.0),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt_outlined),
                              color: Colors.black,
                            ),
                            hintText: "Search....",
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>detailspage()));
                      },
                      child: Column(
                        children: [
                          Container(height:100,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/vegg4.jpeg",),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          ListTile(
                            title: Center(
                              child: Text("Men's Clothing",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                              ),),
                            ),
                            subtitle: Column(
                              children: [
                                Text("Find New Way of Styling....",style: TextStyle(
                                  fontSize: 14,color: Colors.black,),
                                ),
                                Text("tap to more details..",style: TextStyle(
                                  fontSize: 18,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),

                          Container(height:100,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/vegg4.jpeg",),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          ListTile(
                            title: Center(
                              child: Text("Women's Clothing",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                              ),),
                            ),
                            subtitle: Column(
                              children: [
                                Text("Find New Way of Styling....",style: TextStyle(
                                  fontSize: 14,color: Colors.black,),
                                ),
                                Text("tap to more details..",style: TextStyle(
                                  fontSize: 18,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),

                          Container(height:100,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/vegg4.jpeg",),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          ListTile(
                            title: Center(
                              child: Text("Kid's Clothing",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                              ),),
                            ),
                            subtitle: Column(
                              children: [
                                Text("Find New Way of Styling....",style: TextStyle(
                                  fontSize: 14,color: Colors.black,),
                                ),
                                Text("tap to more details..",style: TextStyle(
                                  fontSize: 18,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),

                          Container(height:100,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/vegg4.jpeg",),
                                    fit: BoxFit.fill)
                            ),
                          ),
                          ListTile(
                            title: Center(
                              child: Text("acceceries",style: TextStyle(
                                fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
                              ),),
                            ),
                            subtitle: Column(
                              children: [
                                Text("Find New Way of Styling....",style: TextStyle(
                                  fontSize: 14,color: Colors.black,),
                                ),
                                Text("tap to more details..",style: TextStyle(
                                  fontSize: 18,color: Colors.black,),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),],
                  ),),

                ],),

            );
            // SliverToBoxAdapter(
            //   child: CarouselSlider(
            //     items: [
            //       Image(
            //         image: AssetImage("assets/images/fruit1.jpeg"),
            //         height: 200,
            //         width: 200,
            //         fit: BoxFit.fill,
            //       ),
            //       Image(
            //         image: AssetImage("assets/images/veggies1.webp"),
            //         height: 200,
            //         width: 200,
            //         fit: BoxFit.fill,
            //       ),
            //       Image(
            //           image: AssetImage("assets/images/fruit2.jpeg"),
            //           height: 200,
            //           width: 200,
            //           fit: BoxFit.fill),
            //       Image(
            //         image: AssetImage("assets/images/veggies2.jpg"),
            //         height: 200,
            //         width: 200,
            //         fit: BoxFit.fill,
            //       ),
            //     ],
            //     options: CarouselOptions(
            //       height: 200,
            //       aspectRatio: 16.9,
            //       viewportFraction: 0.8,
            //       initialPage: 0,
            //       enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       autoPlayInterval: Duration(seconds: 3),
            //       autoPlayAnimationDuration: Duration(milliseconds: 800),
            //       autoPlayCurve: Curves.easeInBack,
            //       //type of animation
            //       enlargeCenterPage: true,
            //       enlargeFactor: 0.3,
            //       scrollDirection: Axis.horizontal,
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.all(15.0),
            //     child: Container(
            //         height: 60,
            //         decoration: BoxDecoration(
            //             border: Border.all(
            //               color: Colors.black,
            //               width: 1,
            //             ),
            //             borderRadius: BorderRadius.zero),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Column(
            //               children: [
            //                 Icon(Icons.alarm),
            //                 Text("30 mins policy"),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Icon(Icons.co_present_rounded),
            //                 Text("Traceability"),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 Icon(Icons.location_city),
            //                 Text("Local surroundings"),
            //               ],
            //             ),
            //           ],
            //         )),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: const EdgeInsets.all(10.0),
            //     child: Text(
            //       "Shop by category",
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
            // SliverGrid(
            //     delegate: SliverChildBuilderDelegate(
            //           (context, index) {
            //         return Card(
            //           child: Column(
            //               children: [
            //                 Image(image:  AssetImage(items[index]),fit: BoxFit.fill,),
            //               ]),
            //         );
            //       },
            //       childCount: items.length,
            //     ),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 3, childAspectRatio: 1, mainAxisSpacing: 5))
        //   ],
        // ));
  }
}
