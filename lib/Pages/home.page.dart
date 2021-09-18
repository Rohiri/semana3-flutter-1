import 'package:flutter/material.dart';
import 'package:semana3noticias/Models/articles.model.dart';
import 'package:semana3noticias/Provider/articles.provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ArticleProvider response = ArticleProvider();

  Future<List<Article>>? articleList;

  int countPage = 1;

  @override
  void initState() {
    articleList = response.fetchArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            setState(() {
              countPage++;
              articleList = response.fetchArticles(page: countPage);
            });
        },
        child: Icon(Icons.new_label),
      )
    );
  }

  _body() {
    return FutureBuilder(
      future: articleList,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){

          List<Text> lista = [];

          snapshot.data.forEach( (item)=>{
            lista.add(Text(item.author))
          });
          return ListView(
            children: lista,
          );
        }else{
          return Center(child: CircularProgressIndicator());
        }
      }
    );
  }
}