import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  String title='home';

  void changetitle(){
 setState(() {
   title='update title';
 });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amber,
      ),
    body: ElevatedButton(
      onPressed: (){
        changetitle();
      },
      child: Text("Button Title"),
      ),
    );
  }
}