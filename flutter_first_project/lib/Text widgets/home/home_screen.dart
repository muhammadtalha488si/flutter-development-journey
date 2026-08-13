import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
           style: TextStyle(
          fontSize: 40,
          color:Color.fromARGB(255, 4, 232, 11),
        ),
          ),
        backgroundColor:Colors.blueGrey,
      ),
      body: Text(
        'I AM SOFTWARE ENGINEERING STUDENT AT UET MARDAN',
        maxLines: 1,
        style: TextStyle(
          fontSize: 20,
          color:Color.fromARGB(255, 183, 4, 232),
          fontStyle:FontStyle.italic,
          letterSpacing: 2.5,
          height: 2.5,
          overflow: TextOverflow.ellipsis,
         decoration: TextDecoration.underline,
         decorationColor: Colors.amber,
         decorationThickness: 4,
         fontFamily: 'MyFont'
        ),
        ),
    );
  }
} 