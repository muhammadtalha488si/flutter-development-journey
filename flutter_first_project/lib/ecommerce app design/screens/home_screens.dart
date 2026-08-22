import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     leading: Padding(
      padding: EdgeInsetsGeometry.all(4),
      child:Image.asset('assets/images/image.png'),
     ),
     title: Text('E-commerse platform '),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Badge(
            label: Text('13'),
            child: Icon(CupertinoIcons.bell,size: 30,),
          ),
        )
      ],
      ),
    body: ListView(
      children: [
          //search box
         Card(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(CupertinoIcons.search),
              suffixIcon: Icon(Icons.filter_list)
            ),
          ),
         ),
        
      PageView(
        children: [
            Container(
          height: 180,
          margin:EdgeInsets.symmetric(horizontal: 15) ,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/image.jpg'),
          )
          ),
        ),

     
        ],
      )
      ],
    ),
    );
  }
}