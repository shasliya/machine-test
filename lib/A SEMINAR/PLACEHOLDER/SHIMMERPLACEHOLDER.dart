import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shimmer Placeholder '),
        ),
        body: Scrollbar(
          child: Center(
            child:ListView.builder(itemBuilder: (context,index){
              return Card(
                child: Shimmer.fromColors(
                  baseColor: Colors.red[100]!,
                  highlightColor: Colors.black45,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey,
                  ),
                ),
              );
            },
            itemCount:10,)
          ),
        ),
      ),
    );
  }
}
