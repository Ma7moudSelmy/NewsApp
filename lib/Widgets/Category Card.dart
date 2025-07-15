import 'package:flutter/material.dart';
import 'package:news_app/Models/CategoryModels.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key,
    required this.category,
  });
final Categorymodels category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 3, left: 3),
      child: Container(
          width: 200,
          decoration: BoxDecoration(
          
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image)),
      
            borderRadius: BorderRadius.circular(20)),
          child:Center(child: Text(category.categoryName
         , style: const TextStyle(color: Colors.white
        , fontWeight: FontWeight.bold
         ),)),
        ),
    );
  }
}