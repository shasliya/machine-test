import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/completeUI/tabbar1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: menueg(),
  ));
}

class menueg extends StatefulWidget {
  const menueg({super.key});

  @override
  State<menueg> createState() => _menuegState();
}

class _menuegState extends State<menueg> {
  int index = 0;
  var screen = [
    tabbareg(),
    Center(child: Text("second screen")),
    Text("third screen"),
    Text("fourth screen"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoping time..."),
        backgroundColor: Colors.blue[100],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("shasliya"),
              accountEmail: Text("shasliyagmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/mickey.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Shwz.png"),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg21.jpeg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.payment_outlined),
              title: Text("payment and refund"),
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.heart),
              title: Text("whishlisted items"),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("shared products"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("logout"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sell_outlined,
            ),
            label: "reseller",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_travel_outlined,
            ),
            label: "my orders",
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView(
                        children: [
                          ListTile(
                            title: Text("check our website"),
                            subtitle: Text("www.customerservice.com"),
                          ),
                          ListTile(
                            title: Text("connect our team"),
                            subtitle: Text("9876453276"),
                          ),
                          ListTile(
                            title: Text("please write a feedback "),
                            subtitle: Text("@instagram"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.help_outline_outlined),
              ),
              label: "customer service")

          // BottomNavigationBarItem(IconButton(icon:Icons(Icons.contact_page_outlined),label:"Contact"),
        ],
      ),
      body: screen[index],
    );
  }
}
