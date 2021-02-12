import 'package:flutter/material.dart';
import 'package:ballerunit/Home_Page.dart';

void main() {
  runApp(MyApp());
}

final Color plainColor = Color(0xFFFAFAFA);
final Color primarycolor = Color(0xff000000);
final Color seccolor = Color(0xff1e1f21);

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: HomePage(),
    );
  }
}


