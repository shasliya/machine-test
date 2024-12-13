import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: adminpage(),
  ));
}
class adminpage extends StatefulWidget {
  const adminpage({super.key});

  @override
  State<adminpage> createState() => _adminpageState();
}

class _adminpageState extends State<adminpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin page',style: GoogleFonts.expletusSans(
        fontSize: 20,
        color: Colors.white,),),
        backgroundColor: Colors.green[900],),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child:Padding(
      padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                child: TextButton(onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                      context: context,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                    builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.green,),
                            title: Text('Name'),
                            subtitle: Text('Score'),
                            trailing: Icon(Icons.delete),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.green,),
                            title: Text('Name'),
                            subtitle: Text('Score'),
                            trailing: Icon(Icons.delete),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.green,),
                            title: Text('Name'),
                            subtitle: Text('Score'),
                            trailing: Icon(Icons.delete),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.green,),
                            title: Text('Name'),
                            subtitle: Text('Score'),
                            trailing: Icon(Icons.delete),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(backgroundColor: Colors.green,),
                            title: Text('Name'),
                            subtitle: Text('Score'),
                            trailing: Icon(Icons.delete),
                          ),
                        ),
                      ],
                    );
                  },

                  ) ;}, child:Text("Player's ScoreList",style: GoogleFonts.expletusSans(
                  fontSize: 20,
                  color: Colors.black,), )),
              ),
            ),
          ),
          Container(
            child:Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                child: TextButton(onPressed: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.green,),
                              title: Text('Name'),
                              subtitle: Text('email'),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.green,),
                              title: Text('Name'),
                              subtitle: Text('email'),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.green,),
                              title: Text('Name'),
                              subtitle: Text('email'),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.green,),
                              title: Text('Name'),
                              subtitle: Text('email'),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              leading: CircleAvatar(backgroundColor: Colors.green,),
                              title: Text('Name'),
                              subtitle: Text('email'),
                              trailing: Icon(Icons.delete),
                            ),
                          ),
                        ],
                      );
                    },

                  ) ;}, child:Text("Player's Login Details",style: GoogleFonts.expletusSans(
                  fontSize: 20,
                  color: Colors.black,), )),
              ),
            ),
          ),

        ],
      )


           );

  }
}
