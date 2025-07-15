import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Views/Home_View.dart';

void main() {
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
