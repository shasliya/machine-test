import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(MaterialApp(
  home: MyRiveAnimation(),
));

class MyRiveAnimation extends StatelessWidget {
  void initState()
  {
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:
        RiveAnimation.network(
          "https://rive.app/community/files/13006-24595-menu-popup-interaction.riv",
          // 'https://cdn.rive.app/animations/vehicles.riv',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
