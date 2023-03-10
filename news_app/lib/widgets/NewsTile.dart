//THIS is NewsTile.dart
//Now u do
import 'package:flutter/material.dart';
import 'package:new_app/screens/ArticleDetails.dart';

class NewsTile extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  final String articleUrl;
  final String content;
  NewsTile(
      {required this.title,
      required this.description,
      required this.imgUrl,
      required this.articleUrl,
      required this.content});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            maxLines: 2,
          ),
          leading: ClipRect(
              child: Image.network(
            imgUrl,
            width: 50,
            height: 100,
            fit: BoxFit.cover,
          )),

          onTap: () {
            //Add Navigator.push here
            Navigator.push(context,
                MaterialPageRoute(

                  builder: (context) => ArticleDetail(title: this.title,
                  description: this.description,
                  imgUrl: this.imgUrl, 
                  articleUrl: this.articleUrl, 
                  content: this.content),

                ),
                );
          },
        ),
      ),
    );
  }
}

