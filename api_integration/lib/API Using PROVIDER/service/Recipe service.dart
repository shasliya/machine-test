import 'package:api_integration/API%20Using%20PROVIDER/model/Recipe%20model.dart';
import 'package:http/http.dart' as http;
class RecipeService{
  final String basekey="https://dummyjson.com/recipes";
Future<Recipes>getrecipie()async{
  final response=await http.get(Uri.parse(basekey));
  if(response.statusCode==200)
    {
      return recipesFromJson(response.body);
    }
  else
    {
      throw Exception('Failed to fetch news');
    }
}
}