import 'package:api_integration/API%20Using%20PROVIDER/model/Recipe%20model.dart';
import 'package:flutter/material.dart';


import '../service/Recipe service.dart';

class RecipieProvider extends ChangeNotifier{
  List<Recipe>foodrecipie=[];
  List<Recipe>filteredfoodrecipie=[];
  List<Recipe>get recipiesnew=> filteredfoodrecipie.isNotEmpty? filteredfoodrecipie:foodrecipie;

  Future<void>fetchrecipies()async{
    try{
      Recipes recipes=await RecipeService().getrecipie();
      foodrecipie=recipes.recipes ?? [];
      filteredfoodrecipie=foodrecipie;
      notifyListeners();
    }
    catch(e)
    {
      throw Exception('Failed to load');
    }
  }
  void searchRecipes(String query){
    filteredfoodrecipie = foodrecipie.where((recipe){
      return recipe.name!.toLowerCase().contains(query.toLowerCase());
    }).toList();
    notifyListeners();
}
}