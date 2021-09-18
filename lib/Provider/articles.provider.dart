import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:semana3noticias/Models/articles.model.dart';

class ArticleProvider {
  Future<List<Article>> getArticles() async {
    List<Article> articleList = [];
    var url = Uri.https(
      'newsapi.org',
      '/v2/everything',
      {
        'q': 'tesla',
        'from': '2021-09-15',
        'sortBy': 'publishedAt',
        'apiKey': 'e8f01d6b811144ca8e90b630baa05224'
      },
    );

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      jsonResponse['articles'].forEach((item) => articleList.add(Article.fromJson(item)));
    }
    return articleList;
  }
}
