import 'package:ballerunit/main.dart';
import 'package:ballerunit/model/newsViewModel.dart';
import 'package:flutter/material.dart';


class ArticlePage extends StatelessWidget {

  final Article article;

  ArticlePage({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
        backgroundColor: seccolor,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,

              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: article.urlToImage == null ? AssetImage("images/placeholder_image1.png"):
                  NetworkImage(article.urlToImage),
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(height: 8.0),

            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(
                  color: Colors.white,
                ) ,
              ),
            ),


            SizedBox(height: 12.0),

            Text(
                article.description,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                )
            ),


          ],
        ),
      ) ,

    );
  }
}
