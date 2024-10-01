import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
runApp(MaterialApp(home: carouseeg(),));
}
class carouseeg extends StatefulWidget {
  const carouseeg({super.key});

  @override
  State<carouseeg> createState() => _carouseegState();
}

class _carouseegState extends State<carouseeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: CarouselSlider(items: [Image(image: AssetImage("assets/images/cyanback.jpeg"),height: 400,width: 400,fit: BoxFit.fill,),
    Image(image: AssetImage("assets/images/newyork.jpeg"),height: 400,width: 400,fit: BoxFit.fill,),
    Image(image: AssetImage("assets/images/newyork.jpeg"),height: 400,width: 400,fit: BoxFit.fill,),
    Image(image: AssetImage("assets/images/havasu falls.webp"),height: 400,width: 400,fit: BoxFit.fill,),
  ],
          options: CarouselOptions(
            height: 400,

            aspectRatio: 16.9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInBack,//type of animation
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )
      )),
);
  }
}
