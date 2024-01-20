import 'package:flutter/material.dart';
import 'package:new_apps1_2110020005/component/costumListTile.dart';
import 'package:new_apps1_2110020005/model/article_model.dart';
import 'package:new_apps1_2110020005/services/api_service.dart';

class OtomotivePage extends StatefulWidget {
  const OtomotivePage({Key key}) : super(key: key);

  @override
  State<OtomotivePage> createState() => _OtomotivePageState();
}

class _OtomotivePageState extends State<OtomotivePage> {
  @override
  Widget build(BuildContext context) {
    final ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Otomotive Article',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
          future: client.getArticleAutomotive(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article> article = snapshot.data;
              return ListView.builder(
                itemCount: article.length,
                itemBuilder: (context, index) =>
                    costumListTile(article[index], context),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
