import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: staggerdgridviewassgnt(),
  ));
}

class staggerdgridviewassgnt extends StatefulWidget {
  const staggerdgridviewassgnt({super.key});

  @override
  State<staggerdgridviewassgnt> createState() => _staggerdgridviewassgntState();
}

class _staggerdgridviewassgntState extends State<staggerdgridviewassgnt> {
  var data = [
    "Havasu Falls",
    "Trondheim",
    "Portugal",
    "Rockey Mountain National Park",
  ];
  var image = [
    "assets/images/havasu falls.webp",
    "assets/images/trondheim.jpeg",
    "assets/images/portugal.jpeg",
    "assets/images/rockey mountain national park.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(
          data.length,
          (index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Image(
                      image: AssetImage(image[index]),
                    ),
                  ),
                  Text(data[index])
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
