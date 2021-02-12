import 'package:ballerunit/main.dart';
import 'package:ballerunit/model/api_service.dart';
import 'package:flutter/material.dart';

import 'customListTile.dart';
import 'newsViewModel.dart';




class ListNews extends StatefulWidget {
  @override
  _ListNewsState createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {

  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
return Scaffold(
        appBar: AppBar(
        backgroundColor: seccolor,
        elevation: 0.0,
        title: Row(
          children: [
            Text("LIVE"),
            Text("NEWS",style: TextStyle(color: Colors.blue),),
          ],
        ),

    ),
  body: FutureBuilder(
    future: client.getArticle(),
    builder: (BuildContext context, AsyncSnapshot <List<Article>> snapshot ){
      if(snapshot.hasData){

        List<Article> articles = snapshot.data;
        return ListView.builder(
          itemCount: articles.length,
          itemBuilder:  (context, index) => customListTile(articles[index],context),


        );
      }

      return Center(
        child: CircularProgressIndicator(),
      );

    },
  ),




    );


  }
}


