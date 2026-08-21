// import 'package:flutter/material.dart';

// class HomeScreens extends StatefulWidget {
//   const HomeScreens({super.key});

//   @override
//   State<HomeScreens> createState() => _HomeScreensState();
// }

// class _HomeScreensState extends State<HomeScreens> {
// int index=0;
// List<String>items=['Home','Search','Settings'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text(items[index],),
//         centerTitle: true,
//         backgroundColor: Colors.indigo,
//       ),
//       body: Center(child: Text(items[index],style: TextStyle(fontSize:30),),),
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value){
//          setState(() {
//            index=value;
//          });
//         },
//         currentIndex: index,
//         items: [
//           BottomNavigationBarItem(
//             label: 'Home',
//             icon: Icon(Icons.home),
//           ),

//            BottomNavigationBarItem(
//             label: 'Search',
//             icon: Icon(Icons.search),
//           ),

//            BottomNavigationBarItem(
//             label: 'Setting',
//             icon: Icon(Icons.settings),
//           ),
      
//         ],
//       ),
//     );
//   }
// }