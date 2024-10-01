import 'package:exprollable_page_view/exprollable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: myclass(),));
}
class myclass extends StatefulWidget {
  const myclass({super.key});

  @override
  State<myclass> createState() => _myclassState();
}

class _myclassState extends State<myclass> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ExprollablePageView(
        itemCount: 5,
        itemBuilder: (context, page) {
          return ListView.builder(
            controller: PageContentScrollController.of(context),
            itemBuilder: (context, index) {
              return ListTile(title: Text('Item#$index'));
            },
          );
        },
      ),
    );
  }
}
