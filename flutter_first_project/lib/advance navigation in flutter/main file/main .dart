// import 'package:flutter/material.dart';
// import 'package:flutter_first_project/advance%20navigation%20in%20flutter/screens/home%20screens/home_screens.dart';
// import 'package:flutter_first_project/advance%20navigation%20in%20flutter/screens/profile%20screens/profile_screens.dart';
// import 'package:flutter_first_project/advance%20navigation%20in%20flutter/screens/setting%20screens/setting_screens.dart';
 

//  void main(){
//   runApp(MyApp());
//  }

//  class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
    
//      routes: {
//       '/':(context)=>HomeScreens(), 
    
     
//      },
//      onGenerateRoute:( RouteSettings settings) {
//        switch(settings.name){
//         case'/profile':{
//           String name = settings.arguments as String;
//           return MaterialPageRoute(
//             builder:(context){
//               return ProfileScreens(name: name,);
//             },
//              );
//         };

//         case '/settings':{
//           Map data=settings.arguments as Map;
//           return MaterialPageRoute(
//             builder:(_)=>SettingScreens(
//               name: data['name'],
//               email: data['email'],
//             )
//              ); 
//         }

//        }
//      },

//     );
//   }
// }