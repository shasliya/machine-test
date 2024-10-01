import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Placeholder Example')),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/images/person1.png', // Local placeholder image
            image: 'https://via.placeholder.com/600', // Network image
            fit: BoxFit.cover, // Adjusts how the image fits within the space
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}