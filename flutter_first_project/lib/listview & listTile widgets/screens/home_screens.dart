import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text('HOME'),
      ),
      
      body: ListView(
        padding:EdgeInsets.all(20),
        children: [
          for(int i=0; i<=30;i++)
          ListTile(
            title: Text('TALHA DURRANI'),
            subtitle: Text("Software engineering & app developer"),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/image1.JPG'),
            ),
            trailing: Icon(Icons.done),
          )
        ],
      ),
    );
  }
}