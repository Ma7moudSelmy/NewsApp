import 'package:flutter/material.dart';
import 'package:news_app/Widgets/CategoryListView.dart';
import 'package:news_app/Widgets/News.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
   
      ),backgroundColor: const Color.fromARGB(255, 209, 210, 216),
      body: Column(
        children: [
          CategoryListView(),
          Expanded(child: News1()),
        ],
      )
      
    );
  }
}


