import 'package:flutter/material.dart';
import 'package:news_app/Models/CategoryModels.dart';
import 'package:news_app/Widgets/Category%20Card.dart';
class CategoryListView extends StatelessWidget {
   const CategoryListView({
    super.key,
  });
final List<Categorymodels> categories =const [
    Categorymodels(image: "assets/business.avif", categoryName: "General"),
    Categorymodels(image: "assets/entertaiment.avif", categoryName: "Entertainment"),
    Categorymodels(image: "assets/Business-model-e1665666384900.jpg", categoryName: "Health"),
    Categorymodels(image: "assets/technology.jpeg", categoryName: "Technology"),
    Categorymodels(image: "assets/sports.avif", categoryName: "Sports"),
    Categorymodels(image: "assets/science.avif", categoryName: "Science"),
    

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Categorycard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
