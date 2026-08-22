import 'package:flutter/material.dart';
import 'package:flutter_first_project/ecommerce%20app%20design/screens/home_screens.dart';
 
 void main (){
  runApp(MYApp());
 }

 class MYApp extends StatefulWidget {
  const MYApp({super.key});

  @override
  State<MYApp> createState() => _MYAppState();
}

class _MYAppState extends State<MYApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreens(),
    );
  }
}