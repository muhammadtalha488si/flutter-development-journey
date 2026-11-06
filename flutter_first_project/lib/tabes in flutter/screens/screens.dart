import 'package:flutter/material.dart';
import 'package:flutter_first_project/Tabes%20in%20flutter/screens/cals_screens.dart';
import 'package:flutter_first_project/Tabes%20in%20flutter/screens/chats_screena.dart';
import 'package:flutter_first_project/Tabes%20in%20flutter/screens/status_screens.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Colors.green,
      ),

      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelColor: const Color.fromARGB(255, 38, 34, 255),
              tabs: [
                Tab(text: 'Chats',),
                Tab(text: 'Status',),
                Tab(text: 'Cals',),
              ],
            ),
            Flexible(
              child:TabBarView(
               children: [
                ChatsScreena(),
                StatusScreens(),
                CalsScreens(),
               ],
              ),
               ),

          ],
        ),
      ),
    );
  }
}