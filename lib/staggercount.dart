import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: stiggerconst(),
  ));
}

class stiggerconst extends StatefulWidget {
  const stiggerconst({super.key});

  @override
  State<stiggerconst> createState() => _stiggerconstState();
}

class _stiggerconstState extends State<stiggerconst> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.green[100],
        body: StaggeredGrid.count(
      crossAxisCount: 6,
      mainAxisSpacing: 10,
      children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 3,
            child: Card(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/havasu falls.webp",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(alignment:Alignment.bottomLeft,
                      child: Text("Havasu Falls", ),
                    ),
                  ),
                ],
              ),
            )),

        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 5,
            child: Card(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/trondheim.jpeg",fit: BoxFit.fill,
                    height: 350,width:250 ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Align(alignment:Alignment.bottomLeft,child:  Text("Trondheim", )),
                  ),
                ],
              ),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 5,
            child: Card(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/portugal.jpeg",fit: BoxFit.fill, height: 350,width:250 ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Align(alignment:Alignment.bottomLeft,child:  Text("Portugal", )),
                  ),
                ],
              ),
            )),

        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 3,
            child: Card(

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset("assets/images/rockey mountain national park.jpg",fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Align(alignment:Alignment.bottomLeft,child:  Text("Rockey Mountain National Park", )),
                  ),
                ],
              ),
            )),
      ],
    )
        );
  }
}
