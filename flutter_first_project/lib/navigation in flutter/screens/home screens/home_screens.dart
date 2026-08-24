import 'package:flutter/material.dart';
import 'package:flutter_first_project/navigation%20in%20flutter/screens/profile%20screens/profile_screens.dart';
import 'package:flutter_first_project/navigation%20in%20flutter/screens/setting%20screens/setting_screens.dart';
class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Home'),
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
         children: [
           ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder:(context) {
                    return ProfileScreens();
                  },
                ));
              },
              child: Text('Go To Profile'),
            ),

             ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder:(context) {
                    return SettingScreens();
                  },
                ));
              },
              child: Text('Go To Setting'),
            ),
            
         ],
       ),
       ),
    );
  }
}