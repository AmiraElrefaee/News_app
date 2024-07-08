import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:news_app2/services/news_service.dart';

import '../models/artical_model.dart';
import 'News_list_view.dart';

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({
//     super.key,
//   });
//
//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.category});
     final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();

}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<AtricleModel> articles=[];

  bool isLoading=true;
@override
var future;
  void initState() {
    // TODO: implement initState
 future= NewsService(Dio()).getNews(
   category: widget.category
 );
    super.initState();
  }
  // void initState() {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<AtricleModel>>(future:future,

        builder: (context,snapshout){

          if ( snapshout.hasData){
      return NewsListView(
        articles:snapshout.data??[],
      );}
          else if (snapshout.hasError){
            return const SliverToBoxAdapter(
              child: SizedBox(
                  height: 600,
                  child: Text('oops there are a error, please try later',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30
                  ),
                  )),
            );
          }
          else {
            return const SliverToBoxAdapter(child:
            SizedBox(
              height: 600,
              child: Center(child: CircularProgressIndicator(
                color: Colors.amber,
                backgroundColor: Colors.black12,

              ),),
            ),);
          }
        });
    //   isLoading ?
    //
    // SliverToBoxAdapter(
    //
    //     child: Center(child: CircularProgressIndicator())
    //
    // )
    //     : articles.isNotEmpty ? NewsListView(
    //   articles: articles,
    // ) :SliverToBoxAdapter(
    //   child: Text('oops there was error , try later '),
    // );
  }
}
