import 'dart:async';
import 'package:ballerunit/model/newsViewModel.dart';
import 'package:http/http.dart' ;
import 'dart:convert';

class ApiService{
  final url = "http://newsapi.org/v2/top-headlines?country=gb&category=sports&apiKey=7fe7786008994fa7ae2201af4b9b19c3";

  Future<List<Article>> getArticle() async{
    Response res = await get(url);

    if(res.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
      List<Article> articles= body.map((dynamic item) => Article.fromJSON(item)).toList();

      return articles;
    }else{
      throw("Cant get Articles");
    }
  }


}