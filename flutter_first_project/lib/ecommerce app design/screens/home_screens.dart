// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_first_project/ecommerce%20app%20design/screens/item_category.dart';
// import 'package:flutter_first_project/ecommerce%20app%20design/screens/item_products.dart';
// import 'package:flutter_first_project/ecommerce%20app%20design/screens/items_baners.dart';

// class HomeScreens extends StatefulWidget {
//   const HomeScreens({super.key});

//   @override
//   State<HomeScreens> createState() => _HomeScreensState();
// }

// class _HomeScreensState extends State<HomeScreens> {
//   List <String> banners=[ 'image.jpg','image.jpg','image.jpg'];
//   int currentIndex =0;
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//      leading: Padding(
//       padding: EdgeInsetsGeometry.all(4),
//       child:Image.asset('assets/images/image.png'),
//      ),
//      title: Text('E-commerse platform '),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Badge(
//             label: Text('13'),
//             child: Icon(CupertinoIcons.bell,size: 30,),
//           ),
//         )
//       ],
//       ),
//     body: ListView(
//       children: [
//           //search box
//          Card(
//           margin: EdgeInsets.all(20),
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: 'Search',
//               prefixIcon: Icon(CupertinoIcons.search),
//               suffixIcon: Icon(Icons.filter_list)
//             ),
//           ),
//          ),
//         // banners
//       SizedBox(
//         height: 150,
//         child: PageView(
//           onPageChanged: (value){
//             setState(() {
//               currentIndex=value;
//             });
//           },
//           children: [
//             for(String images in banners)
//             ItemsBaners(image: 'image.jpg'),

//           ],
//         ),
//       ),
//       SizedBox(
//           height: 40,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           spacing: 10,
//           children: [
//             for(int index=0;index < banners.length;index++)


//             AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//             height:currentIndex == index? 15:8,
//             width: currentIndex == index? 15:8,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: currentIndex == index?Colors.grey:Colors.grey.shade400
//             ),
//           ),
//           ],
//         ),
//       ),
         

//       //  categories
//       ListTile(
//        title:Text('Categories',style: TextStyle(fontSize: 20),),
//        trailing: Text('Show All',style: TextStyle(color: Colors.indigo,fontSize: 15),),
//       ),
//       SizedBox(
//         height: 100,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
           
//             ItemCategory(title:'Linkedin', image: 'linkedin.png', color: Colors.orangeAccent),           ItemCategory(title:'Instagram', image: 'instagram.png', color: Colors.indigoAccent),
//             ItemCategory(title:'Telegram', image: 'telegram.png', color: Colors.green),
//             ItemCategory(title:'Tik-Tok', image: 'tik-tok.png', color: Colors.blueAccent),
//             ItemCategory(title:'Add-Box', image: 'icon1.png', color: Colors.redAccent),
//             ItemCategory(title:'Linkedin', image: 'linkedin.png', color: Colors.orangeAccent),
//             ItemCategory(title:'Instagram', image: 'instagram.png', color: Colors.indigoAccent),
//             ItemCategory(title:'Telegram', image: 'telegram.png', color: Colors.green),
//             ItemCategory(title:'Tik-Tok', image: 'tik-tok.png', color: Colors.blueAccent),
//             ItemCategory(title:'Add-Box', image: 'icon1.png', color: Colors.redAccent),
//           ],
//         ),
//       ),
       
//       //  products
//        ListTile(
//        title:Text('Products',style: TextStyle(fontSize: 20),),
//        trailing: Text('Show All',style: TextStyle(color: Colors.indigo,fontSize: 15),),
//       ),
//        GridView.count(
//        crossAxisCount: 2,
//        padding: EdgeInsets.symmetric(horizontal: 15),
//        mainAxisSpacing: 10,
//        crossAxisSpacing: 10,
//        shrinkWrap: true,
//        physics: NeverScrollableScrollPhysics(),
//        children: [
//       ItemProducts(
//         image:'image3.jpg',
//          logo:'Pantrist',
//           title: 'This is a social media platform',
//           ),

//            ItemProducts(
//         image:'image4.jpg',
//          logo:'Tik_Tok',
//           title: 'This is a social media platform',
//           ),

//            ItemProducts(
//         image:'image5.jpg',
//          logo:'Snapchat',
//           title: 'This is a social media platform',
//           ),

//            ItemProducts(
//         image:'image6.jpg',
//          logo:'Telegram',
//           title: 'This is a social media platform',
//           ),

//            ItemProducts(
//         image:'image8.jpg',
//          logo:'Youtub',
//           title: 'This is a social media platform',
//           ),

//            ItemProducts(
//         image:'image9.jpg',
//          logo:'Logos',
//           title: 'This is a social media logos',
//           ),

//            ItemProducts(
//         image:'image2.jpg',
//          logo:'logos',
//           title: 'This is a social media logos',
//           ),

//            ItemProducts(
//         image:'image7.jpg',
//          logo:'Social media logo',
//           title: 'This is a social media platform',
//           ),
//        ],
//        ),
//       ],
//     ),
//     );
//   }
// }