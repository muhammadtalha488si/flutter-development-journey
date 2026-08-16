// import 'package:flutter/material.dart';

// class HomeSscreens extends StatefulWidget {
//   const HomeSscreens({super.key});

//   @override
//   State<HomeSscreens> createState() => _HomeSscreensState();
// }

// class _HomeSscreensState extends State<HomeSscreens> {
//   String title='home';
//   bool centerTitle=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 133, 185, 74),
//         title: Text(title),
//         centerTitle: centerTitle,

//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         child: Icon(Icons.add),
//       ),

//       // body: ElevatedButton.icon(
//       //   onPressed: () {
//       //      print('Button Clicked');
//       //   },
//       //   style:ElevatedButton.styleFrom(
//       //     backgroundColor: Colors.amberAccent,
//       //     foregroundColor: Colors.black,
//       //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))
//       //   ),
//       //   icon: Icon(Icons.home),
//       //   label: Text('My Button'),
//       // ),

//       body: IconButton(
//         onPressed: (){
//           setState(() {
//             centerTitle=!centerTitle;
//           });
//         },
//         color: Colors.blueAccent,
//         icon: Icon(Icons.access_alarm),
//       ),
//     );
//   }
// }