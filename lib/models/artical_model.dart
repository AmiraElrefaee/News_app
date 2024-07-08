
class AtricleModel{
 final   String? image;
   final String  title;
     final String ?subtitle;
 final String ?url;
   // final Source source;
AtricleModel({required this.image,required this.subtitle,required this.title,required this.url});
  factory AtricleModel.fromjson(Map<String,dynamic> json){
     return AtricleModel(image: json['urlToImage'], subtitle: json['description'], title:json['title']
     ,url: json['url']
     );

   }
   // AtricleModel.fromjson(json)
}
// class Source{
//    final String id;
//    final String name;
//    Source({required this.id, required this.name});
// }