import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sqlhelper.dart';

void main() {
  runApp(MaterialApp(home: mainpage(),));
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List<Map<String, dynamic>>notefromdb = [];

  @override
  void initState() {
    refreshdata();
  }

  bool isloading = false;

  void refreshdata() async {
    final datas = await
    sqlhelper.readnotes();
    setState(() {
      notefromdb = datas;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("notes"),),
      body:
      isloading ? Center(child: CircularProgressIndicator(),) :
      ListView.builder(
          itemCount: notefromdb.length,

          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('${notefromdb[index] ['title']}'),
                subtitle: Text('${notefromdb[index]['subtitle']}'),
                trailing: SizedBox(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: () {
                        showform(notefromdb[index]['id']);

                        // showform([index]['id']);
                      }, icon: Icon(Icons.edit)),
                      IconButton(onPressed: () {
                        deletenote(notefromdb[index]['id']);
                      }, icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: Text("add"),),
    );
  }

  TextEditingController note = TextEditingController();
  TextEditingController subtitle = TextEditingController();

  showform(int ? id) async {
    if(id!=null){
      final exsist=notefromdb.firstWhere((note) => note['id']==id);
      note.text=exsist['title'];
      subtitle.text=exsist['subtitle'];


    }
    showModalBottomSheet(
      isScrollControlled: true,
        context: context, builder: (context) {
      return Container(
        padding: EdgeInsets.only(top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery
                .of(context)
                .viewInsets
                .bottom + 120),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                controller: note,
                decoration: InputDecoration(hintText: "title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))
                )),

            TextField(
                controller: subtitle,
                decoration: InputDecoration(hintText: "subtitle",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))
                )),
            ElevatedButton(onPressed: () async {
              if (id == null) {
                await addnote();

              }
              if(id!=null){
               await udpadatenote(id);
              }
              note.text=" ";
              subtitle.text=" ";
              Navigator.pop(context);
              // if(id!=null){}
            }, child: Text(id == null ? "add" : "update"))
          ],
        ),
      );
    });
  }

  Future<void> addnote() async {
    await sqlhelper.createnotes(note.text, subtitle.text);
    refreshdata();

  }

  Future<void>udpadatenote(int id) async {
    await sqlhelper.updatenotes(id,note.text, subtitle.text);
    refreshdata();



  }

  void deletenote(int id) async{
    await sqlhelper.deletenote(id);
    refreshdata();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));

  }

}