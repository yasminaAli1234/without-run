import 'package:flutter/material.dart';
import 'package:untitled12/model/categoryModel.dart';

import '../screens/news_Listview_bulider.dart';
class categoryTile extends StatelessWidget {

  const categoryTile({super.key, required this.model});
   final CategoryModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return NewsListViewBuilder(categorys: model.categoryName!,);


          }

          ),
        );
      },

      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Stack(
          children:[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
                child: Image.asset(model.image!,width: 120,height: 60,fit: BoxFit.cover,)),
            Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black38,
              ),

              child: Center(child: Text(model.categoryName!,style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
            ),
          ],
        ),
      ),
    );
  }
}
