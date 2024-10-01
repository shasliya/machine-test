import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: bodypateg(),
  ));
}

class bodypateg extends StatefulWidget {
  const bodypateg({super.key});

  @override
  State<bodypateg> createState() => _bodypategState();
}

class _bodypategState extends State<bodypateg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Center(
                            child: const Icon(Icons.hotel,
                                color: Colors.white, size: 30)),
                        Center(
                            child: Text(
                          "Hotel",
                          style: TextStyle(fontSize: 14),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        const Icon(Icons.restaurant,
                            color: Colors.white, size: 30),
                        Text(
                          "Resturent",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.orange,
                    child: Column(
                      children: [
                        const Icon(Icons.local_cafe,
                            color: Colors.white, size: 30),
                        Text(
                          "Cafe",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Column(
                children: [
                  _buildHotelCard(),
                  SizedBox(height: 20),
                  _buildHotelCard(),
                   SizedBox(height: 20),
                  _buildHotelCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotelCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomRight,
                child: const Text(
                  "\$40",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/hotel2.jpeg",
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Awesome Room near Boddha",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Boddha, Kathmandu",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star, color: Colors.green),
                        Icon(Icons.star_half, color: Colors.green),
                      ],
                    ),
                    const SizedBox(width: 5),
                    const Text("(220 reviews)"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
