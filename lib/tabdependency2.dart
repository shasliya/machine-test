
import 'package:flutter/material.dart';
import 'package:flutterproject/stageredgridview.dart';
import 'package:flutterproject/staggercount.dart';
import 'package:flutterproject/staggerdegridviewassignmt.dart';

import 'gridviewbuilder.dart';
import 'listbuildersepersted.dart';
import 'listseprexample2.dart';
import 'listviwecustolistdelegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examples'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const gridviewbuildereg(),
            const SizedBox(height: 16),
            const stageredgridview(),
            const SizedBox(height: 16),
            const stiggerconst(),
            const SizedBox(height: 16),
            const staggerdgridviewassgnt(),
            const SizedBox(height: 16),
            Directionality(
              textDirection: TextDirection.rtl,
              child: listseprexample2(),
            ),
            const SizedBox(height: 16),
             listbuildseperste(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(
                  MaterialPageRoute(
                    builder: (context) {
                      return  listcustomdelist();
                    },
                  ),
                );
              },
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}