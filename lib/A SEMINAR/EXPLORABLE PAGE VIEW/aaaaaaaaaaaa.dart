import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExprollablePageView(),
    );
  }
}

class ExprollablePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exprollable Page View Example')),
      body: PageView(
        children: [
          ExpandablePage(title: 'Page 1', content: 'This is expandable content for Page 1.'),
          ExpandablePage(title: 'Page 2', content: 'This is expandable content for Page 2.'),
          ExpandablePage(title: 'Page 3', content: 'This is expandable content for Page 3.'),
        ],
      ),
    );
  }
}

class ExpandablePage extends StatefulWidget {
  final String title;
  final String content;

  ExpandablePage({required this.title, required this.content});

  @override
  _ExpandablePageState createState() => _ExpandablePageState();
}

class _ExpandablePageState extends State<ExpandablePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(widget.title),
        ),
        ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(8),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text('Tap to expand'),
                );
              },
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(widget.content),
              ),
              isExpanded: _isExpanded,
            ),
          ],
        ),
      ],
    );
  }
}
