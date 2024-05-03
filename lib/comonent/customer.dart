import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled12/model/articles.dart';

import '../screens/article_details.dart';
 Widget Customer(Article article,BuildContext context){
   return GestureDetector(
     onTap: (){
Navigator.push(context,
    MaterialPageRoute(builder: (context)=>ArticlePage(article: article))
     );


     },
     child: Container(
       margin: const EdgeInsets.all(11),
       padding: const EdgeInsets.all(9),
       decoration: BoxDecoration(

         color: Colors.white,
         borderRadius: BorderRadius.circular(20),

       ),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           Container(
             height: 220,
           width: double.infinity,

           decoration:BoxDecoration(
             image: DecorationImage(
               image: NetworkImage(article.urlToImage),
               fit: BoxFit.cover,
             ),
             borderRadius: BorderRadius.circular(9),
           ) ,

           ),
           const SizedBox(height: 8,),
           Container(
             padding: const EdgeInsets.all(6),
             decoration: BoxDecoration(
               color: Colors.lightBlueAccent,
               borderRadius: BorderRadius.circular(20),
             ),
             child: Text(article.source.name,style: const TextStyle(color: Colors.white,fontSize: 8),),
           ),
           const SizedBox(height: 7),
           Text(article.title,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
           maxLines: 2,
             overflow: TextOverflow.ellipsis,
           ),
         ],
       ),


     ),
   );





 }
