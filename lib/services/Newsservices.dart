import 'package:dio/dio.dart';
import 'package:news_app/Models/articlesModels.dart';

class Newsservices {
  final Dio dio;

  Newsservices(this.dio);

 Future<List<Articlesmodels>> getNews() async {
    var response = await dio.get(
      "https://newsapi.org/v2/top-headlines?apiKey=972bd20cf6cf4722b80aba171a70528d&country=us&category=general",
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<Articlesmodels> articlesList = [];
    for (var article in articles) {
      Articlesmodels articlesmodels = Articlesmodels(
        source: Source(id: article["source"]['id'], name: article[""]),
        image: article["urlToImage"],
        title: article["title"],
        subtitle: article["description"],
      );
      articlesList.add(articlesmodels);
    }
    return articlesList;
  }
}
