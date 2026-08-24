import 'package:flutter/material.dart';

class ProfileScreens extends StatelessWidget {
  final String name;
  const ProfileScreens({super.key, required this.name});

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Welcome $name'),
      ),


    );
  }
}