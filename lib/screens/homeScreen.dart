import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/servece/api_services.dart';
import 'package:untitled12/servece/data.dart';


import '../comonent/customer.dart';
import '../model/articles.dart';
import '../model/category.dart';
import '../model/categoryModel.dart';
import 'news_Listview_bulider.dart';



class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {


 // List<Slider>sliders=[];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer:  Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("yasmina Ali"),
              accountEmail: Text("Yasmina123456@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage:AssetImage("assets"),


              ),

            ),
            const SizedBox(height: 10,),
            ListTile(
              title: const Text("HomeScreen"),
              leading: const Icon(Icons.home),
              onTap: (){},
            ),
            ListTile(
              title: const Text("Help"),
              leading: const Icon(Icons.help),
              onTap: (){},
            ),
            ListTile(
              title: const Text("LogOut"),
              leading: const Icon(Icons.exit_to_app),
              onTap: (){},
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.info_outline),
              onTap: (){},
            ),

          ],
        ),

      ),
      appBar: AppBar(
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(fontSize: 12,color: Colors.black),),
            Text("Cloud",style: TextStyle(fontSize: 12,color: Colors.yellow),)
          ],

            ),


        ),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Brand",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                  Row(
                    children: [
                      Text("View all",style: TextStyle(fontSize: 6,color: Colors.grey),),
                      SizedBox(width: 3,),
                      Icon(Icons.arrow_forward_ios,size: 5,)
        
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 7,),

           CustomScrollView(
             slivers: [
               SliverToBoxAdapter(
                 child: CategoryListView(),
               ),
               const SliverToBoxAdapter(
                 child: SizedBox(height: 18,),
               ),
               const SliverToBoxAdapter(
                 child:   NewsListViewBuilder(categorys: "sports",),
               ),
             ],
           ),










                  ],
                ),



              ),

      ),

          );
        

  }
  Widget promoCard(image,txt){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 2/3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),


                ),

              ),

            ),



          ),
        ),
        const SizedBox(height: 5,),
        Text(txt,style: const TextStyle(fontSize: 8,fontWeight: FontWeight.normal),),
      ],
    );



  } // not important
}
