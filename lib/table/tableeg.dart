import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: tableeg(),));
}
class tableeg extends StatefulWidget {
  const tableeg({super.key});

  @override
  State<tableeg> createState() => _tableegState();
}

class _tableegState extends State<tableeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          border: TableBorder.all(width: 3,color: Colors.black),
            columns: [
          DataColumn(
            label: Text(
              "id",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          DataColumn(
              label: Text(
            "name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "job",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          DataColumn(
              label: Text(
            "salary",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ], rows: [
          DataRow(cells: [DataCell(Text("1")),
            DataCell(Text("Anu")),
            DataCell(Text("Teacher")),
            DataCell(Text("50000")),
          ],),
          DataRow(cells: [DataCell(Text("2")),
            DataCell(Text("Manu")),
            DataCell(Text("Doctor")),
            DataCell(Text("25000")),
          ],),
          DataRow(cells: [DataCell(Text("3")),
            DataCell(Text("ammu")),
            DataCell(Text("Teacher")),
            DataCell(Text("45000")),
          ],),
          DataRow(cells: [DataCell(Text("4")),
            DataCell(Text("ponni")),
            DataCell(Text("IT")),
            DataCell(Text("75000")),
          ],)
        ]),
      ),
    );
  }
}
