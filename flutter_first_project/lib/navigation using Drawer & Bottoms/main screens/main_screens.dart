import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 30,),
            FlutterLogo(size: 80,),
             SizedBox(height: 30,),
            
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            
             ListTile(
              title: Text('profile'),
               leading: Icon(CupertinoIcons.profile_circled),
            ),

             ListTile(
              title: Text('settings'),
               leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

            BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),

            BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),
        ],
      ),
    );
  }
}