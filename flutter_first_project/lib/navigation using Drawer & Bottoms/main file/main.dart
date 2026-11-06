import 'package:flutter/material.dart';
import 'package:flutter_first_project/navigation%20using%20Drawer%20&%20Bottoms/main%20screens/main_screens.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainScreens(),
    );
  }
}