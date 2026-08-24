import 'package:flutter/material.dart';

class SettingScreens extends StatelessWidget {
  const SettingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Setting'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){  
            Navigator.pop(context);
          },
         child:Text('Go Back')
        ),
      )
    );
  }
}