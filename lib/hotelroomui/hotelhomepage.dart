import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotelhomepage(),
  ));
}

class hotelhomepage extends StatefulWidget {
  const hotelhomepage({super.key});

  @override
  State<hotelhomepage> createState() => _hotelhomepageState();
}

class _hotelhomepageState extends State<hotelhomepage> {
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.cyan[900],
          title: null,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
                child: Stack(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "search for your locations",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.camera_alt)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
              ),
            ),
            Text("Kochi")
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            ListTile(
              leading: Icon(Icons.update_outlined),
              title: Text("update"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("help"),
            ),
            ListTile(
              leading: Icon(Icons.reviews_outlined),
              title: Text("review"),
            ),
            ListTile(
              leading: Icon(Icons.feedback_outlined),
              title: Text("feedback"),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
          slivers: [
          SliverAppBar(
          floating: true,
          pinned: true,
          backgroundColor: Colors.lightBlue[200],
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              color: Colors.black,
            ),
          ],
          expandedHeight: 180,
          flexibleSpace: Stack(
            children: [
              const Align(
                child: Text(
                  "Type Your Location",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                alignment: Alignment.center,
              ),
              Positioned(
                bottom: 8,
                left: 16,
                right: 16,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                        color: Colors.black,
                      ),
                      hintText: "Search....",
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),],),);



    //
    //
    //     slivers: [
    //       SliverToBoxAdapter(
    //         child: Container(
    //           height: 50,
    //           child: Text(""),
    //         ),
    //       ),
    //       SliverList(
    //         delegate: SliverChildBuilderDelegate((context, index) {
    //           return Container(
    //             child: Row(
    //               children: [
    //                 Card(
    //                   color: color[index],
    //                   child: ListTile(
    //                     //leading:
    //                     title: Icon(iconss[index]),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           );
    //         }, childCount: color.length),
    //       ),
    //       SliverToBoxAdapter(
    //         child: Container(
    //           height: 50,
    //           child: Text(""),
    //         ),
    //       ),
    //       SliverList(
    //         delegate: SliverChildBuilderDelegate(
    //           (context, index) {
    //             return Card(
    //               child: ListTile(
    //                 leading: Image(image: AssetImage(image[index])),
    //                 title: Container(
    //                   child: Column(children: [
    //                     Text(
    //                       "Awesome rooms near Boddha",
    //                     ),
    //                     Center(
    //                       child: Text(
    //                         "Boddha,Kathmandu",
    //                         style: TextStyle(fontSize: 12),
    //                       ),
    //                     ),
    //                   ]),
    //                 ),
    //                 subtitle: Column(
    //                   children: [
    //                     Icon(Icons.star, color: Colors.green),
    //                     Icon(Icons.star, color: Colors.green),
    //                     Icon(Icons.star, color: Colors.green),
    //                     Icon(Icons.star, color: Colors.green),
    //                     Icon(Icons.star_half, color: Colors.green),
    //                     Text(review[index])
    //                   ],
    //                 ),
    //               ),
    //             );
    //           },
    //           childCount: review.length,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    /* body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.cyan[700],
            title: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "Search your locations....",
                ),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
            ],
            expandedHeight: 140,
          ),
        ],),*/
    //);
  }
}
