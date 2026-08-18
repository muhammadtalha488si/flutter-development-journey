import 'package:flutter/material.dart';
import 'package:flutter_first_project/listview%20&%20listTile%20widgets/screens/home_screens.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreens(),
    );
  }
}