import 'package:flutter/material.dart';

import '../models/categoryModel.dart';
import '../views/category_view.dart';
import 'catagors_list_view.dart';

class card extends StatelessWidget {
  const card({super.key,required this.category});
final CategoryModels category;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return CategoryView(
                category: category.name,
              );

            }

        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(

          height:110,
          width: 220,

          decoration: BoxDecoration(


            image:DecorationImage(

                fit: BoxFit.fill,
                image:AssetImage(category.imgUrl) ) ,
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,

          ),
          margin: EdgeInsetsDirectional.only(start: 10),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:  Center(
              child: Text(category.name,style: TextStyle(
                  color: Colors.black87,fontWeight: FontWeight.bold,
                  fontSize: 30,
                shadows: [
                  Shadow(
                      offset: Offset(1,1),blurRadius: 40
                      ,color: Colors.white
                  ),
                ],
              ),)),
        ),
      ),
    );
  }
}
