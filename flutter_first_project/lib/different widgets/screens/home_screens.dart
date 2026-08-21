import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  bool isConnected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 72, 72),
        title: Text('Home',style: TextStyle(color: Colors.white70),),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: isConnected,
              activeThumbColor:Colors.deepPurpleAccent,
              activeTrackColor:const Color.fromARGB(255, 255, 68, 71) ,
              inactiveThumbColor: const Color.fromARGB(255, 82, 61, 1),
              inactiveTrackColor: Colors.green,
              onChanged: (value){
              setState(() {
                isConnected=value;
              });
              },
            ),

            SwitchListTile(
              value: isConnected,
              onChanged: (value) {
                setState(() {
                  isConnected=value;
                });
              },   
              title: Text('internet connectivity'),
              subtitle: Text('this is the sub title'),      
            ),

            Checkbox(
              value: isConnected,
              onChanged: (value){
                setState(() {
                  isConnected=value!;
                });
              },
            ),
            CheckboxListTile(
               value: isConnected,
              onChanged: (value){
                setState(() {
                  isConnected=value!;
                });
              },
              title: Text('internet connectivity'),
              subtitle: Text('this is the sub title'),   
            ),
          ],
        ),
      ),
    );
  }
}