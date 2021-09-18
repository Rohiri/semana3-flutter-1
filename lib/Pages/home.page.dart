import 'package:flutter/material.dart';
import 'package:semana3noticias/Provider/articles.provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ArticleProvider response = ArticleProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _body()
    );
  }

  _body() {
    response.fetchArticles();
    return Text("body!!");
  }
}