import 'package:flutter/material.dart';

import '../comonent/customer.dart';
import '../model/articles.dart';
import '../servece/api_services.dart';
class NewsListViewBuilder extends StatefulWidget {
   const NewsListViewBuilder({super.key, required this.categorys});
  final String categorys;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Api clint= Api();

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: clint.getData(category:widget.categorys ),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot){
        if (snapshot.hasData){

          List<Article>? articles=snapshot.data;
          return ListView.builder(
            itemCount: articles?.length,
            itemBuilder: (context,index) => Customer(articles![index],context),

          );

        }else if (snapshot.hasError){
          return const SliverFillRemaining(
            child:Center(
              child: Text("oops,there is no data ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
            ),

          );

        }

        return const Center(
          child: CircularProgressIndicator(),

        );


      },
    );
  }
}
