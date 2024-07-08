import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'artical_model.dart';

class NewsView extends StatelessWidget {
  NewsView({required this.newsUrl});

 var newsUrl;

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(newsUrl));
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}