import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('task_box');

  runApp(MaterialApp(
    home: savedata(),
  ));
}

class savedata extends StatefulWidget {
  const savedata({Key? key}) : super(key: key);

  @override
  State<savedata> createState() => _todolistState();
}

class _todolistState extends State<savedata> {
  List<Map<String, dynamic>> task = [];
  final tbox = Hive.box('task_box');

  void initState() {
    super.initState();
    loadTsak();
  }

  Future<void> createTsak(Map<String, dynamic> task) async {
    await tbox.add(task);
    loadTsak();
  }

  void loadTsak() {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {'key': id, 'name': value['name'], 'details': value['details']};
    }).toList();
    setState(() {
      task = data.reversed.toList();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save Data Using Hive"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${task[index]['name']}'),
              subtitle: Text('${task[index]['details']}'),
              trailing: SizedBox(
              ),
            ),
          );
        },
        itemCount: task.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: Text("Save"),
      ),
    );
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController detailsController = TextEditingController();

  showform(int? id) async {
    if (id != null) {
      final exsist_task = task.firstWhere((element) => element['key'] == id);
      nameController.text = exsist_task['name'];
      detailsController.text = exsist_task['details'];
    }
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        hintText: "name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                TextField(
                    controller: detailsController,
                    decoration: InputDecoration(
                        hintText: "datails",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)))),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createTsak({
                          'name': nameController.text,
                          'details': detailsController.text
                        });
                      }

                      nameController.text = '';
                      detailsController.text = '';
                      Navigator.pop(context);
                    },
                    child: Text( "add" ))
              ],
            ),
          );
        });
  }
}
