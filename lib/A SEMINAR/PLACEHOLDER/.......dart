import 'package:flutter/material.dart';

class ImageWithPlaceholder extends StatelessWidget {
  final String imageUrl; // URL of the actual image

  const ImageWithPlaceholder({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          // Image has finished loading, return the actual image
          return child;
        } else {
          // Image is still loading, show the progress indicator
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                  : null,
            ),
          );
        }
      },
      errorBuilder: (context, error, stackTrace) {
        return const Center(child: Icon(Icons.error)); // Error handling
      },
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image with Placeholder')),
        body: Center(
          child: ImageWithPlaceholder(
            imageUrl: 'https://example.com/high-res-image.jpg',  // Replace with your image URL
          ),
        ),
      ),
    );
  }
}
