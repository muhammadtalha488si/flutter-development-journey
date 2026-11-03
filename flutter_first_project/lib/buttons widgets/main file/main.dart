import 'package:flutter/material.dart';
import 'package:flutter_first_project/buttons%20widgets/screens/home_sscreens.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeSscreens(),
    );
  }
}