import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chatlist.dart';
void main() {
  runApp(MaterialApp(
    home: whatsappmainpg(),
  ));
}

class whatsappmainpg extends StatefulWidget {
  const whatsappmainpg({super.key});

  @override
  State<whatsappmainpg> createState() => _whatsappmainpgState();
}

class _whatsappmainpgState extends State<whatsappmainpg> {

  int index = 0;
  var screen=[
    listcontent(),
    Center(child: Text("Status")),
    Center(child: Text("New community")),
    Center(child: Text("Calls"))];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 20),
                child: Text(
                  //textAlign:TextAlign.left,
                  "Chit Chat",
                  style: TextStyle(
                    color: Colors.pink[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],),
          actions: [
            Icon(
              Icons.qr_code_scanner_outlined,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.camera_alt),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                // PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            }),
          ],),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            FontAwesomeIcons.message,
            color: Colors.pink[300],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            selectedItemColor: Colors.pink[700],
            unselectedItemColor: Colors.black,
            // type: BottomNavigationBarType.fixed,
            //backgroundColor: Colors.teal[700],
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.mark_unread_chat_alt_rounded),
                  label: "Chats"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.update_outlined,
                ),
                label: "Updates",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups,
                ),
                label: "Comminities",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                ),
                label: "Calls",
              ),
            ]),
        body: screen[index],
      ),
    );
  }
}
