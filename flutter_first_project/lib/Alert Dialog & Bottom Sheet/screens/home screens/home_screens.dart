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
           showDialog(
            context: context,
            builder:(context){
              return AlertDialog(
                title: Text('Logout'),
                icon: Icon(Icons.logout),
                content: Column(
                  children: [
                    Text('Are you sure you want logout ?'),
                  ],
                ),
                actions: [
                  ElevatedButton(
                    onPressed:(){
                   Navigator.pop(context);
                    } ,
                  child:Text('No')),

                  ElevatedButton(
                    onPressed:(){
                   Navigator.pop(context);
                    } ,
                  child:Text('yes ')),
                ],
              );
            }
            );
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