import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/services/news_service.dart';

import '../models/artical_model.dart';
import 'news.dart';

class NewsListView extends StatelessWidget {
  final List<AtricleModel> articles;

  const NewsListView({super.key,required this.articles});

  @override



  Widget build(BuildContext context) {

    return
    SliverList(delegate: SliverChildBuilderDelegate((context,index)
    {
      return Padding(
        padding: const EdgeInsets.only(bottom:25),
        child: News(
          articalmodel: articles[index],
        ),
      );
    }
      ,childCount: articles.length,

    ));
  }
}
