import 'package:flutter/material.dart';
import 'package:untitled12/model/articles.dart';
class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.article});
 final Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),

      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(article.source.name),
              ),
            ),
            const SizedBox(height: 7),
            Text(article.description,style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),

          ],
        ),
      )

    );
  }
}
