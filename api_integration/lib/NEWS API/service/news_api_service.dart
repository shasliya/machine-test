
 import 'dart:convert';
import '../model/news model.dart';
import 'package:http/http.dart' as http;

 class NewsappService{
   final String apikey="8840fc8fe3e04f2dbb49545da4860703";
   final String baserurl="https://newsapi.org/v2";
 Future<News>getnews(String keyword)async{
   var response= await http.get( Uri.parse("$baserurl/everything?q=$keyword&apiKey=$apikey")
   );
   if(response.statusCode == 200 ) {
     final data = jsonDecode(response.body);
     print('API Response: $data');
     return News.fromJson(data);
   }else{
     throw Exception('Failed to fetch news');
   }
 }}