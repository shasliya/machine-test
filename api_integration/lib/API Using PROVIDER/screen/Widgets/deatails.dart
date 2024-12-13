import 'package:api_integration/API%20Using%20PROVIDER/model/Recipe%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipieDetailPage extends StatefulWidget {
  const RecipieDetailPage({ required this.recipe});
  final Recipe recipe;

  @override
  State<RecipieDetailPage> createState() => _RecipieDetailPageState();
}

class _RecipieDetailPageState extends State<RecipieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.name??"Recipie"),),
        body: SingleChildScrollView(
        child:  Padding(padding: const EdgeInsets.all(0.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Recipe.image != null)
              Image.network(
                Recipe.image!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 16,),
            Text("Ingredients:",
              style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 10,
              ),
            ),
            SizedBox(height: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  Recipe .ingredients?.length ?? 0,
                      (index) => Text('-${Recipe.ingredients![index]}')),
            ),
            SizedBox(height: 16,),
            Text("instructions")
          ],
        ),
        ),
    ),
    );
  }
}
