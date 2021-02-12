import 'package:ballerunit/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget teamStats(String logo, String teamName){

  return Expanded(
    child: Column(
      children: [


        SizedBox(
        height: 10.0,
       ),
        Expanded(
          child: Image.network(logo,width: 54.0,),
        ),
        SizedBox(
        height: 10.0,
       ),


        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 18.0,
          color: plainColor,
        ),
        ),
      ],

    ),

  );
}