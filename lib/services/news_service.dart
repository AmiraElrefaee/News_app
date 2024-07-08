import 'package:dio/dio.dart';
import 'package:news_app2/models/artical_model.dart';

class NewsService{
final Dio dio;

NewsService(this.dio);

Future <List<AtricleModel>> getNews({required String category}) async {
    try {
      var response= await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=f7b14d837751432dacb1274da3af13f4&category=$category');
      Map<String,dynamic> jasonData=response.data;
      List<dynamic> articales= jasonData['articles'];
      
      //same of the line 12 but it is more spacific
      // List<Map<String,dynamic>> articales=jasonData['articles'] as  List<Map<String,dynamic>> ;
        // print(artical);
        // for ( var arti in artical){
        //   print(arti['author']);
        // }
        List<AtricleModel> articaleslList=[];
        for( var articale in articales){
      AtricleModel articalModel =AtricleModel.fromjson(articale);
      // AtricleModel(
      //     // source: Source(id: articale['source']['id'], name: articale['source']['name']),
      //     image: articale['urlToImage'],
      //     subtitle:articale['description'],
      //     title:  articale['title']);
      articaleslList.add(articalModel);
        }
        print(articaleslList);
        return articaleslList ;
    }  catch (e) {
     return[];
    }
  }
}