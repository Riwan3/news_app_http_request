import 'dart:convert';
import 'package:http/http.dart';
import 'package:new_apps1_2110020005/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = Client();

// getarticle automotive
  Future<List<Article>> getArticleAutomotive() async {
    final queryParameters = {
      // 'country': 'id',
      // 'apiKey': 'e7d13ccf3f504ce4a00c33e6f9d6aa32',
      // 'category': 'sport',
      'q': 'automotive',
      'apiKey': 'e7d13ccf3f504ce4a00c33e6f9d6aa32',
    };

    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }

  // getarticle sport
  Future<List<Article>> getArticleSport() async {
    final queryParameters = {
      'country': 'id',
      'apiKey': 'e7d13ccf3f504ce4a00c33e6f9d6aa32',
      'category': 'sport',
      // 'q': 'automotive',
      // 'apiKey': 'e7d13ccf3f504ce4a00c33e6f9d6aa32',
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}
