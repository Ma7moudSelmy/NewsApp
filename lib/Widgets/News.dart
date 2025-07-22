import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';


class News extends StatelessWidget {
  const News({super.key ,required this.articlesmodels});
final ArticleModel articlesmodels;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(articlesmodels.image!),
        ),
        Text(
          articlesmodels.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        Padding(
          padding: const EdgeInsets.all(50),
          child: Image.asset("assets/download (1).jpeg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
         
        ),
        Padding(
          padding: const EdgeInsets.all(60),
          child: Image.asset("assets/2025_6_9_15_36_19_32.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "مواقع التواصل الاجتماعي قد تداولت خلال الأيام الماضية صورًا ومقاطع توثق وجود 3 أطفال بلا مأوى، يفترشون مدخل عمارة سكنية، في مشهد مؤلم أثار تعاطف المواطنين واستياءهممحافظ بورسعيد يوجه بالتحرك العاجل لإنقاذ 3 أطفال بلا مأوى",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        
      ],
    );
    
  }
}

class News1 extends StatefulWidget {
  const News1({super.key});

  @override
  State<News1> createState() => _News1State();
}

class _News1State extends State<News1> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    Newsservices(Dio()).getNews().then((news) {
      setState(() {
        articles = news;
      });
    }).catchError((e) {
      print("Error: $e");
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10, 
      itemBuilder: (context, index) {
        return News(
          articlesmodels: articles[index],
        );
      },
    );
  }
}

class Newsservices {
  Newsservices(Dio dio);
  
  getNews() {}
  
}
