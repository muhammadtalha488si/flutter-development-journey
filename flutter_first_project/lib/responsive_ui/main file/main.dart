import 'package:flutter/material.dart';
import 'package:flutter_first_project/responsive_ui/screens/home_screens.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreens() ,
    );
  }
}