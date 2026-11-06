import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_project/navigation%20using%20Drawer%20&%20Bottoms/main%20screens/homee_scren.dart';
import 'package:flutter_first_project/navigation%20using%20Drawer%20&%20Bottoms/main%20screens/profilee_scren.dart';
import 'package:flutter_first_project/navigation%20using%20Drawer%20&%20Bottoms/main%20screens/seting_scren.dart';


class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}
List<Widget> Widgets=[
  HomeeScren(),
  ProfileeScren(),
  SetingScren(),  
];

List<String>title=['Home','Profile','Settings'];

int currentIndex=0;

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 101, 141, 211),
      ),
        body: Widgets[currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 30,),
            FlutterLogo(size: 80,),
             SizedBox(height: 30,),
             
            
            ListTile(
              selected: currentIndex == 0,
              onTap: () {
                setState(() {
                  currentIndex=0;
                });
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            
             ListTile(
               selected: currentIndex == 1,
              onTap: () {
                setState(() {
                  currentIndex=1;
                });
              },
              title: Text('profile'),
               leading: Icon(CupertinoIcons.profile_circled),
            ),

             ListTile(
               selected: currentIndex == 2,
              onTap: () {
                setState(() {
                  currentIndex=2;
                });
              },
              title: Text('settings'),
               leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
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