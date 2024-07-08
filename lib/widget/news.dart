import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/services/news_service.dart';

import '../models/artical_model.dart';
import '../models/webpView.dart';

class News extends StatelessWidget {
  const News({super.key, required this.articalmodel});
  final AtricleModel articalmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NewsView(newsUrl: articalmodel.url);
                },
              ),
            );
          },
       child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.amber
                ,width: 4
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white
                      ,width: 7
                  )
              ),
              child: Image(

                image:  articalmodel.image !=null ? NetworkImage(articalmodel.image!):
                NetworkImage('https://th.bing.com/th/id/OIP.JYuQXqPOwllSYLkZLrVliAHaHa?rs=1&pid=ImgDetMain'),
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,

              ),
            ),
          ),

        ),),
       const  SizedBox(
          height: 12,
        ),
        Text(articalmodel.title
        ,maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
        ),
       const SizedBox(
          height: 8,
        ),
        Text(articalmodel.subtitle?? ' ',
        maxLines: 2,
          style: TextStyle(
            color: Colors.black38,
            fontSize: 18,
            overflow: TextOverflow.ellipsis,
          ),
        ),

      ],

    );
  }
}
