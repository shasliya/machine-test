import 'package:api_integration/API%20Using%20PROVIDER/Provider/RecipieProvider.dart';
import 'package:api_integration/API%20Using%20PROVIDER/screen/Widgets/recipieGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipieList extends StatelessWidget {
  const RecipieList({super.key});

  @override
  Widget build(BuildContext context) {
    var recipieprovider=Provider.of <RecipieProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Recipies'),),
      body: recipieprovider.recipiesnew.isEmpty?
          Center(child: CircularProgressIndicator(),):
          LayoutBuilder(builder: (context,constraints)
          {
            if(constraints.minWidth>=600)
              {
                return recipieGrid(RecipieProvider.recipiesnew, 4 ,constraints.minWidth);
              }
            else if(constraints.minWidth>=400){
              return recipieGrid(RecipieProvider.recipiesnew, 2 ,constraints.minWidth);
            }
            else if(constraints.minWidth>=200){
              return recipieGrid(RecipieProvider.recipiesnew, 1 ,constraints.minWidth);
            }
          }),

    );
  }
}
