import 'dart:convert';
import 'package:ballerunit/ScoreBoard/ScoreboardModel.dart';
import 'package:http/http.dart' ;
import 'dart:async';

class FootballApi{

  final String apiUrl = "https://v3.football.api-sports.io/fixtures?season=2020&&league=39";

  static const headers ={
    'x-rapidapi-host':'v3.football.api-sports.io',
    'x-rapidapi-key':'27ce607076e25cb706ff8368c6d0a5c4',
  };

  Future<List<SoccerMatch>> getAllMatches() async{
    final Response res= await get(apiUrl, headers: headers);
    var body;

    if(res.statusCode == 200){
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api service: $body");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item)).toList();

      return matches;
    }

// return getAllMatches();
  }


}