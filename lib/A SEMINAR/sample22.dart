import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RiveAnimationScreen(),
    );
  }
}

class RiveAnimationScreen extends StatefulWidget {
  @override
  _RiveAnimationScreenState createState() => _RiveAnimationScreenState();
}

class _RiveAnimationScreenState extends State<RiveAnimationScreen> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('idle'); // This should match your animation name.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rive Animation Example'),
      ),
      body: Center(
        child:
        RiveAnimation.asset(
          'assets/animation.riv',
          controllers: [_controller],
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.isActive) {
              _controller.isActive = false;
            } else {
              _controller.isActive = true;
            }
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
