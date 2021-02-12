import 'package:ballerunit/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar of Events"),
        backgroundColor: seccolor,
      ),
    );
  }
}
