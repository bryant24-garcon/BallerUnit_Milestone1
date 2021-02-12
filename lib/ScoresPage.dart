import 'package:ballerunit/ScoreBoard/bodypage.dart';
import 'package:ballerunit/ScoreBoard/manage_api.dart';
import 'package:ballerunit/main.dart';
import 'package:flutter/material.dart';
import 'package:ballerunit/ScoreBoard/ScoreboardModel.dart';

class Scores extends StatefulWidget {
  @override
  _ScoresState createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  Future <List<SoccerMatch>> futureAllMatches;
  void initState() {
    super.initState();
    futureAllMatches = FootballApi().getAllMatches();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: seccolor,
      appBar: AppBar(
        backgroundColor: seccolor,
        elevation: 0.0,
        title: Row(
          children: [
            Text("LIVE"),
            Text("BOARD",style: TextStyle(color: Colors.blue),),
          ],

        ),
        centerTitle: true,
      ),

      body: FutureBuilder(
        future: futureAllMatches,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return pageBody(snapshot.data);

          }else{return Center(
            child: CircularProgressIndicator());
          }
        } ,
      ),


    );
  }
}
