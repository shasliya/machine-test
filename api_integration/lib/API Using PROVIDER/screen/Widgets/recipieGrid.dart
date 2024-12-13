import 'package:api_integration/API%20Using%20PROVIDER/model/Recipe%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'deatails.dart';

class recipieGrid extends StatelessWidget {
  final List<Recipe>recipies;
      int crossAxisCount; 
      double maxWidth;
  recipieGrid(this.recipies,this.crossAxisCount,this.maxWidth);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: recipies.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount),
      itemBuilder: (BuildContext context, int index) {
        final recipie=recipies[index];
        return GestureDetector(
          onTap:() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipieDetailPage( recipe: recipie,)));
          },
          child: Card(elevation: 4.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Container(
                height: maxWidth/crossAxisCount*0.6,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: recipie.image!=null? Image.network(recipie.image!,fit:BoxFit.cover)
                ),
              ),
              )
            ],
          ),)
          ,
        );
      },
      
    );
  }
}
