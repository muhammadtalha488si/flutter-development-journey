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
        backgroundColor: const Color.fromARGB(255, 64, 201, 255),
        title: Text('HOME PAGE',),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            SizedBox(height: 50,),
          FlutterLogo(size: 120,),
          SizedBox(height: 20,),
          Text('App Title',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
          SizedBox(height: 20,),

           ListTile(
            onTap: (){
              print('clicked');
            },
            title: Text("Home"),
            leading: Icon(Icons.home),
           ),

            ListTile(
            onTap: (){
              print('clicked');
            },
            title: Text("Setting"),
            leading: Icon(Icons.settings),
           ),

            ListTile(
            onTap: (){
              print('clicked');
            },
            title: Text("About"),
            leading: Icon(Icons.info),
           ),

            ListTile(
            onTap: (){
              print('clicked');
            },
            title: Text("Helf"),
            leading: Icon(Icons.help),
           ),

            ListTile(
            onTap: (){
              print('clicked');
            },
            title: Text("Logout"),
            leading: Icon(Icons.logout),
           ),


          ],
        ),
      ),
    );
  }
}