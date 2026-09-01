import 'package:flutter/material.dart';
import 'package:flutter_first_project/login_pag/screens/login_screens.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Homescreen() ,
    );
  }
}