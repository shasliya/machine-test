import 'package:api_integration/API%20Using%20PROVIDER/screen/Widgets/recipieList.dart';
import 'package:api_integration/API%20Using%20PROVIDER/service/Recipe%20service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/RecipieProvider.dart';

void main()
{
  runApp(MaterialApp());
}
class recipieApp extends StatelessWidget {
  const recipieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>RecipieProvider()..fetchrecipies()),
      ],
child: MaterialApp(title: 'Recipie App',
    theme:ThemeData(primarySwatch: Colors.blue,
    ),
home: RecipieList(),),
    );
  }
}
