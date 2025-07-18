import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Views/Home_View.dart';
import 'package:news_app/services/Newsservices.dart';

void main() {
  Newsservices(Dio()).getNews();
  runApp(MyWidget());
}

final dio = Dio();



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
