import 'package:datbasesql/222Sqldata/SQLHEPPP.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstadmin extends StatefulWidget {
  const firstadmin({Key? key}) : super(key: key);

  @override
  State<firstadmin> createState() => _firstadminState();
}

class _firstadminState extends State<firstadmin> {
  List<Map<String, dynamic>>notefromdb = [];
  bool isloading = false;
  @override
  void initState()
  {
    super.initState();
    refreshdata();

  }
  Widget build(BuildContext context) {
    void   refreshdata()async {
     final data= await sqlhlpp.viewlogins();
     setState(() {
       notefromdb=data;
       isloading=false;
     });
    }
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ADMIN PAGE",style: TextStyle(color:Colors.white,
              fontSize: 30),),
         ListView.builder(itemBuilder: (context, int index){
           return Card(
             color:Colors.blue[300],
             child: ListTile(
               title: Text('${notefromdb[index]['name']}'),
               subtitle:Text('${notefromdb[index]['email']}'),
             ),
           );
         },itemCount: notefromdb.length,)
        ],
      ),
    );
  }

  void refreshdata() async {
    final data= await sqlhlpp.viewlogins();
    setState(() {
      notefromdb=data;
      isloading=false;
    });
  }


}
