import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fruitsndveg(),
  ));
}

class fruitsndveg extends StatefulWidget {
  const fruitsndveg({super.key});

  @override
  State<fruitsndveg> createState() => _fruitsndvegState();
}

class _fruitsndvegState extends State<fruitsndveg> {
  var image = ["assets/images/fruit11.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.green[700],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'FARMERS FRESH ZONE',
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
                        hintText: "search for vegetables and fruits",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
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
      body: SingleChildScrollView(child: Column(
        children: [
      Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 15.0, right: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "vegitables",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 15.0, right: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "fruits",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 15.0, right: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Exotic Cuts",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
      Container(
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
      Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(Icons.alarm),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "30 mins policy",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.contact_mail_outlined),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Traceability",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.location_city),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Local surroundings",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Container(
        child: Align(alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              "Shop by Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
],
    ),

    ),);
  }
}
