import 'package:flutter/material.dart';
import 'package:new_apps1_2110020005/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            article.urlToImage == null
                ? Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://source.unsplash.com/weekly?coding'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12.0)),
                  )
                : Container(
                    height: 200.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(article.urlToImage),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
            // end images
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
            // end name article
            SizedBox(height: 8.0),
            article.description != null
                ? Text(
                    article?.description,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )
                : Text('Belum ada description'),
            article.content != null
                ? Text(
                    article.content,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )
                : Text('belum ada isi'),
          ],
        ),
      ),
    );
  }
}
