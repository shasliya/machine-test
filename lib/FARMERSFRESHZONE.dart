import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: farmersfreshzone(),
  ));
}

class farmersfreshzone extends StatefulWidget {
  const farmersfreshzone({super.key});

  @override
  State<farmersfreshzone> createState() => _farmersfreshzoneState();
}

class _farmersfreshzoneState extends State<farmersfreshzone> {
  var image = [
    "assets/images/vegg4.jpeg",
    "assets/images/fruit2.jpeg",
    "assets/images/fruit1.jpeg",
    "assets/images/vegg4.jpeg",
    "assets/images/fruit2.jpeg",
    "assets/images/fruit1.jpeg",
    "assets/images/vegg4.jpeg",
    "assets/images/fruit2.jpeg",
    "assets/images/fruit1.jpeg",
    "assets/images/vegg4.jpeg",
    "assets/images/fruit2.jpeg",
    "assets/images/fruit1.jpeg",
   

  ];

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
                    padding: const EdgeInsets.only(top: 10, bottom: 50),
                    child: Text(
                      "FARMERS FRESH ZONE",
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)
                        // Border color

                        // Border width
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Vegetables",
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)
                        // Border color

                        // Border width
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Fruits",
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)
                        // Border color

                        // Border width
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Exotic cuts",
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: CarouselSlider(
            items: [
              Image(
                image: AssetImage("assets/images/fruit1.jpeg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
              Image(
                image: AssetImage("assets/images/veggies1.webp"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
              Image(
                  image: AssetImage("assets/images/fruit2.jpeg"),
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill),
              Image(
                image: AssetImage("assets/images/veggies2.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ],
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16.9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInBack,
              //type of animation
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.zero),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.alarm),
                        Text("30 mins policy"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.co_present_rounded),
                        Text("Traceability"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.location_city),
                        Text("Local surroundings"),
                      ],
                    ),
                  ],
                )),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Shop by category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  child: Column(
                      children: [
                    Image(image:  AssetImage(image[index]),fit: BoxFit.fill,),
                  ]),
                );
              },
              childCount: image.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1, mainAxisSpacing: 5))
      ],
    ));
  }
}
