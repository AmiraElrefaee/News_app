import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/widget/News_List_View_Builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('News',
        style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold ),),
    Text('Cloud',
    style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,color: Colors.yellow.shade600 ),),

    ])),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: CustomScrollView(
            physics: BouncingScrollPhysics(),
          slivers:[
            NewsListViewBuilder(
              category: category,
            ),
          ]
        ),
      ),
    );
  }
}
