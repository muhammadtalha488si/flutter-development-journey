// import 'package:flutter/material.dart';

// class ItemProducts extends StatelessWidget {
//   final String image,logo,title; 
//   const ItemProducts({super.key, required this.image, required this.logo, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return  Card(
//           child: Column(
//             children: [
//               Flexible(
//                 child: ClipRRect(
//                   borderRadius: BorderRadiusGeometry.circular(20),
//                   child: Image.asset('assets/images/$image',width: double.infinity,fit: BoxFit.cover,))
//                 ),
//               Text(logo,style:TextStyle(fontSize: 20),),
//               Text(title,style: Theme.of(context).textTheme.titleSmall,)

//             ],
//           ),
//         );
//   }
// }