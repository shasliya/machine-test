import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: stageredgridview(),
  ));
}

class stageredgridview extends StatefulWidget {
  const stageredgridview({super.key});

  @override
  State<stageredgridview> createState() => _stageredgridviewState();
}

class _stageredgridviewState extends State<stageredgridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
      crossAxisCount: 6,
      mainAxisSpacing: 10,
      children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.green,
                child: Text("1"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.yellow,
                child: Text("2"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.cyan,
                child: Text("3"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.red,
                child: Text("4"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.orange,
                child: Text("5"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                color: Colors.blue,
                child: Text("6"),
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount:2,
              child: Container(
                color: Colors.pink,
                child: Text("7"),
              )),
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.orange,
              child: Text("5"),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.blue,
              child: Text("6"),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount:2,
            child: Container(
              color: Colors.pink,
              child: Text("7"),
            )),

      ],
    ),
        ));
  }
}
