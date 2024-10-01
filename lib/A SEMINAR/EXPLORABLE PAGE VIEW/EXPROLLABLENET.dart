import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExprollablePageView(),
    );
  }
}

class ExprollablePageView extends StatefulWidget {
  @override
  _ExprollablePageViewState createState() => _ExprollablePageViewState();
}

class _ExprollablePageViewState extends State<ExprollablePageView> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exprollable Page View')),
      body: PageView(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isExpanded ? 400 : 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  isExpanded ? 'Expanded View' : 'Collapsed View',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Page 2', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
