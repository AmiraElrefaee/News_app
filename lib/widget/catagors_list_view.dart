

import 'package:flutter/cupertino.dart';

import '../models/categoryModel.dart';
import 'catgary_card.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
final List<CategoryModels> categories=[
  CategoryModels(imgUrl:'assets/bus.jpeg', name: 'business'),
  CategoryModels(imgUrl:'assets/enter.jpeg', name: 'entertainment'),
  CategoryModels(imgUrl:'assets/scince.jpeg', name: 'Science'),
  CategoryModels(imgUrl:'assets/sports.jpg', name: 'Sports'),
  CategoryModels(imgUrl:'assets/technology.jpeg', name: 'technology'),
  CategoryModels(imgUrl:'assets/health.jpeg', name: 'health'),

];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 116,
      child: ListView.builder(
        itemBuilder:(context,index){
          return card(
             category: categories[index],
          );
          },
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
      ),
    );
  }
}
