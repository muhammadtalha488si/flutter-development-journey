
import 'package:flutter/material.dart';
import 'package:flutter_first_project/a%20mini%20project%20using%20ui%20concepts/profilee_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const ProfileScreen(),
    );
  }
}
