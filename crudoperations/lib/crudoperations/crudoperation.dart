import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: const FirebaseOptions(
          apiKey: "AIzaSyA9Xuyh6nr8AYvouopxBISaGvu9wcr7Bmg",
          appId: '1:722663453592:android:77aaecab90aa72ce93f1ed',
          storageBucket: 'shasliyafirebase.firebasestorage.app',
          messagingSenderId: "",
          projectId: 'shasliyafirebase')

  );
  runApp(GetMaterialApp(home:crudoperation (),));
}

class crudoperation extends StatefulWidget {


  @override
  State<crudoperation> createState() => _todofireState();
}

class _todofireState extends State<crudoperation> {
  late CollectionReference _userCollection;

  TextEditingController nameController = TextEditingController();
  TextEditingController infoController = TextEditingController();

  @override
  void initState() {
    _userCollection = FirebaseFirestore.instance.collection("crudoperation");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Operations"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: readUser(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final users = snapshot.data!.docs;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final userId = user.id;
              final userName = user["name"];
              final userDetails = user["info"];

              return ListTile(
                title: Text(
                  '$userName',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "$userDetails",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){
                      uname.text=userName;
                      uinfo.text=userDetails;
                      editUserData(userId);

                    },
                        icon: Icon(Icons.edit)),
                    IconButton(onPressed: (){
                      deleteUser(userId );
                    },
                        icon: Icon(Icons.delete))

                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(),
        child: Icon(Icons.add),
      ),
    );
  }

  void showForm() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              top: 7,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: infoController,
                  decoration: InputDecoration(
                    hintText: "Information",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await addUserToDB(
                      nameController.text.trim(),
                      infoController.text.trim(),
                    );
                  },
                  child: Text("Add User",style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> addUserToDB(String name, String information) async {
    if (name.isNotEmpty && information.isNotEmpty) {
      await _userCollection.add({'name': name, 'info': information}).then((value) {
        print("User added successfully");
        nameController.clear();
        infoController.clear();
        Navigator.of(context).pop();
      }).catchError((error) {
        print("Failed to add data: $error");
      });
    } else {
      print("Please enter both name and information.");
    }
  }

  Stream<QuerySnapshot> readUser() {
    return _userCollection.snapshots();
  }

  var  uname=TextEditingController();
  var uinfo=TextEditingController();

  void editUserData(String userId){

    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),

                TextFormField(
                  controller: uname,
                  decoration: InputDecoration(
                      hintText: "uname",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                SizedBox(height: 20,),

                TextFormField(
                  controller: uinfo,
                  decoration: InputDecoration(
                      hintText: "uinfo",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                ),
                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){
                  updateUser(userId,uname.text,uinfo.text);
                  uname.clear();
                  uinfo.clear();
                },
                    child: Text("update user"))
              ],
            ),
          );

        });
  }
  Future<void> updateUser(String userId, String uname, String uinfo) async {
    var updatedvalues = {"name": uname, "info": uinfo};
    return _userCollection.doc(userId).update(updatedvalues).then((value) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("userdata updated succesfully")),
      );
      print("userdata updated succesfully");
    }).catchError((error) {
      print("userdata updation failed");
    });
  }
  Future<void> deleteUser( var id) async {
    return _userCollection.doc(id).delete().then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User deleted successfully")),
      );
    }).catchError((error) {
      print("User deletion failed: $error");
    });
  }
}