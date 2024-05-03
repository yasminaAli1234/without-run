import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:untitled12/model/articles.dart';
class Api{

 
Future<List<Article>> getData({required String category}) async{
 Response res= await get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2024-03-28&sortBy=publishedAt&apiKey=a689a9c5fc8b4ad6bf100ba4394a3568&category=$category"));
 if (res.statusCode==200){
   Map<String ,dynamic> json= jsonDecode(res.body);
   
   List<dynamic> body= json['articles'];
   List<Article> articles= body.map((dynamic item) => Article.fromJson(item)).toList();
   
   return articles;
 }else{
   throw("Cant get the Article");
   
 }
  
  
}
  
  
  
  
}