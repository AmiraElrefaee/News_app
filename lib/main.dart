import 'package:flutter/material.dart';
import 'package:news_app2/services/news_service.dart';
import 'package:news_app2/views/page.dart';
import 'package:dio/dio.dart';
void main() {
  runApp(const MyApp());

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:page(),
    );
  }
}

