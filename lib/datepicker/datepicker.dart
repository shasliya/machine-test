import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: datepickereg(),));
}
class datepickereg extends StatefulWidget {
  const datepickereg({super.key});

  @override
  State<datepickereg> createState() => _datepickeregState();
}

class _datepickeregState extends State<datepickereg> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: TextEditingController(text: "${ selectdate.toLocal()}".split(" ")[0]),
        readOnly: true,
        decoration: InputDecoration(
          hintText: "Select date",
          suffixIcon: Icon(Icons.calendar_month),

        ),
        onTap: ()=>dataselect(context),
        ),
        ),
    );
  }


Future<void> dataselect(BuildContext context) async{
  final DateTime ? datepick=await showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2025));
  if(datepick!=null && datepick!=selectdate){
    setState(() {
      selectdate = datepick!;
    }
    );
  }
}}