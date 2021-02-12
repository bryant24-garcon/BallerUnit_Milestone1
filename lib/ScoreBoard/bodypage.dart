import 'package:ballerunit/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ballerunit/ScoreBoard/ScoreboardModel.dart';
import 'package:ballerunit/ScoreBoard/goalstats.dart';
import 'package:ballerunit/ScoreBoard/teamstats.dart';
import 'package:ballerunit/ScoreBoard/MatchLayout.dart';

Widget pageBody(List<SoccerMatch> allMatches){
  return Column(
    children: [
      Expanded(
        flex: 2,

        child: Container(

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStats(allMatches[1].home.logo, allMatches[1].home.name),
                goalStats(allMatches[1].fixture.status.timeElapesd, allMatches[1].goal.home, allMatches[1].goal.away, allMatches[1].fixture.date),
                teamStats(allMatches[1].away.logo, allMatches[1].away.name),
              ],
            ),
          ),
        ),
      ),

      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: seccolor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("English Premier League",
                  style: TextStyle(color: plainColor,
                      fontSize: 24.0),
                ),
                Expanded(child: ListView.builder(
                    itemCount: allMatches.length,
                    itemBuilder: (context, index){
                      return matchLayout(allMatches[index]);
                    }

                )
                )
              ],
            ),
          ),
        ),
      )

    ],
  );


}