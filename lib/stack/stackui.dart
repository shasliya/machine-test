import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: stackuieg(),
  ));
}

class stackuieg extends StatefulWidget {
  const stackuieg({super.key});

  @override
  State<stackuieg> createState() => _stackuiegState();
}

class _stackuiegState extends State<stackuieg> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 350, right: 60),
                    child: Text(
                      "Mishal Haneef",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                            child: SizedBox(
                              height: 50,
                              width: 250,
                              child: ListTile(
                                leading: Icon(Icons.person),
                                title: Text(
                                  "My Account",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[600]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                            child: SizedBox(
                              height: 50,
                              width: 250,
                              child: ListTile(
                                leading: Icon(Icons.dashboard_sharp),
                                title: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[600]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                            child: SizedBox(
                              height: 50,
                              width: 250,
                              child: ListTile(
                                leading: Icon(Icons.info),
                                title: Text(
                                  "About",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[600]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Card(
                            child: SizedBox(
                              height: 50,
                              width: 250,
                              child: ListTile(
                                leading: Icon(Icons.login_outlined),
                                title: Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[600]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.blue[100],
              ),
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Positioned(
            child: Expanded(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 8),
                      child: Icon(
                        Icons.list_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, left: 40),
                        child: Text(
                          "Edit your profile",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              color: Colors.white38),
                        ),
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(30)),
                height: 250,
                width: double.infinity,
              ),
            ),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage("assets/images/newyork.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            height: 150,
            width: 150,
            left: 160,
            top: 180,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey[600],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue[100],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.data_usage_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Account"),
          ]),
    );
  }
}
