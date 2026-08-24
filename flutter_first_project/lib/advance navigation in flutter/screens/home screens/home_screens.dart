import 'package:flutter/material.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   
        title: Text('Home'),
      ),
     body: Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed:(){
              Navigator.pushNamed(context, '/profile',arguments: 'Durrani');
            }
          , child: Text('Go to profile')
          ),

          ElevatedButton(
            onPressed:(){
              Navigator.pushNamed(context, '/settings',arguments: {
                'name':'Durrani',
                'email':'abc@gmail.com'
              });
            }
          , child: Text('Go to settings')
          ),


        ],
      ),
     ),

    );
  }
}