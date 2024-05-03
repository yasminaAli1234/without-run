import 'package:flutter/material.dart';
import 'package:untitled12/model/category.dart';

import '../model/categoryModel.dart';


class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
  final List<CategoryModel> categories=[
    CategoryModel(image: "assets/image/sport.jpg", categoryName: "sports"),
    CategoryModel(image:"assets/image/science.jpg", categoryName: "science"),
    CategoryModel(image:"assets/image/health.jpg", categoryName: "health"),
    CategoryModel(image:"assets/image/busness.jpg", categoryName: "business"),
    CategoryModel(image:"assets/image/technology.jpg", categoryName: "technology"),
    CategoryModel(image:"assets/image/general.jpg", categoryName: "general"),
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index){
          return categoryTile(model: categories[index]);


      },
      ),

    );
  }
}
