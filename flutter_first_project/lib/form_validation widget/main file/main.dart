import 'package:flutter/material.dart';
import 'package:flutter_first_project/form_validation%20widget/screens/home_screens.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreens(),
    );
  }
}