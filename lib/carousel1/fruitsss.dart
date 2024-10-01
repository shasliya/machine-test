import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fruits extends StatefulWidget {
  const fruits({super.key});

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  var name=["asd"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
      backgroundColor: Colors.green[700],
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'FARMERS FRESH ZONE',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
              child: Stack(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "search for vegetables and fruits",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
            ),
          ),
          Text("Kochi")
        ],
            expandedHeight: 140,),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text("List view"),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
               // color: color[index],
                child: ListTile(
                 // leading: Image(image: AssetImage(image[index])),
                  //title: Text(name[index]),
                 // subtitle: Text(phone[index]),
                ),
              );
            }, childCount: name.length),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text("Grid view"),
            ),
          ),

    // )
      ],
       ),
     );
  }
}
