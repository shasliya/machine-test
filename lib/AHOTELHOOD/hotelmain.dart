import 'package:flutter/material.dart';

class hotelmain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                floating: false,
                pinned: true,
                expandedHeight: 180.0,
                backgroundColor: Colors.pink[100],
                flexibleSpace: Stack(
                  children: [
                    Positioned(
                        top: 30,
                        left: 200,
                        child: Text("Search your location")),
                    Padding(
                      padding: const EdgeInsets.only(top: 80, bottom: 10),
                      child: TextField(
                          decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "search something here.....",
                        prefixIcon: Icon(Icons.search),
                      )),
                    )
                  ],
                )
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, top: 20, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.red[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.hotel_rounded,
                              color: Colors.black,
                            ),
                            Text(
                              "Hotel",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.black,
                            ),
                            Text(
                              "Resturent",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.orange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_cafe,
                              color: Colors.black,
                            ),
                            Text(
                              "Cafe",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  Card(
                    child: Stack(children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Image(
                          image: AssetImage("assets/images/hotel2.jpeg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 20,
                        child: Container(
                          child: Center(child: Text("\$40")),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          height: 30,
                          width: 30,
                        ),
                      )
                    ]),
                  ),
                   ListTile(
                    leading: Text(    "Awosome Room near Boddha",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    subtitle: Center(child: Text("Boddha ,Kathmandu",style: TextStyle(fontSize: 12),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                        ),

                        SizedBox(width: 8),
                        Text('(220 reviews)'),
                      ],
                    ),
                  )
                ],
              );
            }))
          ],

      ),
    );
  }
}
