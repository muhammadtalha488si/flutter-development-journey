import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selected=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: Text('Home'),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) {
              print('Value is $value');
            },
            itemBuilder:
            (context){
              return [
                 for(int i=1;i<=5;i++)
                PopupMenuItem<int>(
                  value: 1,
                  child:Text('item $i'),
                   ),
                   
              ];
            } )
        ],
      ),
      
    body: Center(
      child: DropdownButton(
        value: selected,
        onChanged: (value) {
          setState(() {
            
          });
        },

        items: [
          for(int i=1;i<=10;i++)
          DropdownMenuItem(
            value: i,
            child: Text('value is $i'),
          )
        ],
      ),
    ),

    );
  }
}