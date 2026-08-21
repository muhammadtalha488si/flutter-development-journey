import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          
          ElevatedButton(
            onPressed: () {},
            child: Text('this is button'),
          ),

               ElevatedButton(
            onPressed: () {},
            child: Text('this is button'),
          ),

        ElevatedButton(
            onPressed: () {},
            child: Text('this is button'),
          ),
   
         Text(
          'Helo World',
          style: Theme.of(context).textTheme.displayMedium,
         ),
         Icon(Icons.home),
        ],
      ), 
    ),
    );
  }
}