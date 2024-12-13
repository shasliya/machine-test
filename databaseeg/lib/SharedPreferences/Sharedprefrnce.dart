import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences local storage',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userName = '';
  int userAge = 0;
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    final data = await SharedPreferences.getInstance();

    setState(() {
      userName = data.getString('user_name') ?? '';
      userAge = data.getInt('user_age') ?? 0;
      isLoggedIn = data.getBool('is_logged_in') ?? false;
    });
  }

  Future<void> saveData() async {
    final user = await SharedPreferences.getInstance();
    user.setString('user_name', 'John Doe');
    user.setInt('user_age', 30);
    user.setBool('is_logged_in', true);
    loadData();  // Reload data after saving
  }

  // Future<void> clearData() async {
  //   final delete = await SharedPreferences.getInstance();
  //   prefs.clear();  // Clear all data
  //   loadData();  // Reload data after clearing
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('User Name: $userName'),
            Text('User Age: $userAge'),
            Text('Is Logged In: $isLoggedIn'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveData,
              child: Text('Save Data'),
            ),
            // ElevatedButton(
            //   onPressed: clearData,
            //   child: Text('Clear Data'),
            // ),
          ],
        ),
      ),
    );
  }
}
