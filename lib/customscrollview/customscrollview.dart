import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: customscrolleg(),
  ));
}

class customscrolleg extends StatefulWidget {
  const customscrolleg({super.key});

  @override
  State<customscrolleg> createState() => _customscrollegState();
}

class _customscrollegState extends State<customscrolleg> {
  var name = ["amal", "arun", "anu", "manu", "chinnu"];
  var phone = ["12345423", "3434556", "2434565", "5467435", "76454365"];
  var image = [
    "assets/images/Chrisbanks.png",
    "assets/images/mickey.png",
    "assets/images/Shwz.png",
    "assets/images/Timon.png",
    "assets/images/Chrisbanks2.png"
  ];
  var color = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.pink,
    Colors.cyan
  ];
  var colorsg = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.pink,
    Colors.cyan
  ];
  var iconss = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded
  ];
  var data = [
    "account balance",
    "add alert",
    "access alarm rounded",
    "add circle",
    "ac_unit",
    "insert comment rounded"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue[100],
            pinned: true,
            floating: true,
            title: Text(
              "Custom Scroll View",
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
            ],
            bottom: AppBar(
              title: Container(decoration: BoxDecoration(shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8), color: Colors.blue[100],),

                height: 40,
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "search something here.....",
                        prefixIcon: Icon(Icons.search),
                    )),
              ),
            ),
            expandedHeight: 140,
          ),
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
                color: color[index],
                child: ListTile(
                  leading: Image(image: AssetImage(image[index])),
                  title: Text(name[index]),
                  subtitle: Text(phone[index]),
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
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Card(
                    color: Colors.yellow,
                    child: Column(children: [
                      Icon(iconss[index]),
                      Text(data[index]),
                    ]),
                  );
                },
                childCount: data.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 1, mainAxisSpacing: 5))
        ],
      ),
    );
  }
}
