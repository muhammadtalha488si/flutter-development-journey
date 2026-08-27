import 'package:flutter/material.dart';
class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 165, 193),
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
        
          ElevatedButton(
          onPressed: () {
            
          },
          child: Text('show Dialog'),
          ),
         
            
          ElevatedButton(
          onPressed: () {
            
          },
          child: Text('show Bottom Sheet'),
          ),
        
          ],
        ),
      ),
    );
  }
}