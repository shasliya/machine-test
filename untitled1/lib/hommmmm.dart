import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Userhomepage(),
  ));
}

class Userhomepage extends StatefulWidget {
  const Userhomepage({super.key});

  @override
  State<Userhomepage> createState() => _UserhomepageState();
}

class _UserhomepageState extends State<Userhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[900],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Aqwiz',
                    style: GoogleFonts.expletusSans(
                      fontSize: 20,
                      color: Colors.green[900],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outline, color: Colors.green[900]),
              title: Text(
                'Profile',
                style: GoogleFonts.expletusSans(
                  fontSize: 15,
                  color: Colors.green[900],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.green[900]),
              title: Text(
                'About',
                style: GoogleFonts.expletusSans(
                  fontSize: 15,
                  color: Colors.green[900],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.green[900],
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello User',
              style: GoogleFonts.expletusSans(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              "Let's Play!",
              style: GoogleFonts.expletusSans(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Play now and level up",
              style: GoogleFonts.expletusSans(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.green[900],
                    ),
                    onPressed: () {
                      // Define your action here
                    },
                    child: Text(
                      'Play now',
                      style: GoogleFonts.expletusSans(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
