import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/main.dart';
import 'package:news_app2/widget/News_list_view.dart';
import 'package:news_app2/widget/catgary_card.dart';
import 'package:news_app2/widget/news.dart';

import '../models/artical_model.dart';
import '../services/news_service.dart';
import '../widget/News_List_View_Builder.dart';
import '../widget/catagors_list_view.dart';


class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

          ],
        ),),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child:CategoryListView() ,),
           SliverToBoxAdapter(child:SizedBox(
             height: 32,
           ) ,),
            NewsListViewBuilder(
              category: 'general',
            ),
           // SliverToBoxAdapter(child: NewsListView(),)
          ],
        ),
      ),


    );
  }
}

