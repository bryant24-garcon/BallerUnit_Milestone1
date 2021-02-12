import 'package:ballerunit/main.dart';
import 'package:flutter/material.dart';
import 'package:ballerunit/ScoreBoard/ScoreboardModel.dart';
import 'package:intl/intl.dart';

Widget goalStats(int time, int goalHome, int goalAway, String date){
var home= goalHome;
var away= goalAway;
var timeElapsed = time;
if(home==null) home = 0;
if(away==null) away = 0;
if(timeElapsed==null) timeElapsed=0;
DateTime date = new DateTime.now();
String formatdate= new DateFormat.yMEd().format(date);

  return Expanded(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [

        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            "$formatdate",
            style: TextStyle(
              fontSize: 18.0,
              color: seccolor,
            ),

          ),
        ),


        Expanded(
          child : Center(
          child: Text(
          "$home : $away",
          textAlign: TextAlign.right,
          style: TextStyle(
          fontSize: 36.0,
          color: plainColor,
     ),),
          ),
        ),

        Text(
          "$timeElapsed'", style: TextStyle(
          fontSize: 25.0,
          color: plainColor,
        ),
        ),

      ],
    ),
  );
}