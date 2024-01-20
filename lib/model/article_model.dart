import 'package:new_apps1_2110020005/model/source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: Source.fromJson(json['source']),
        author: json['author'] as String,
        content: json['content'] as String,
        description: json['description'] as String,
        publishedAt: json['publishedAt'] as String,
        title: json['title'] as String,
        url: json['url'] as String,
        urlToImage: json['urlToImage'] as String);
  }
}
