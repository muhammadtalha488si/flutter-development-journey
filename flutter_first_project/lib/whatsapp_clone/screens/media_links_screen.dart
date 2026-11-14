import 'package:flutter/material.dart';

class MediaLinksScreen extends StatelessWidget {
  const MediaLinksScreen({super.key});
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(title: const Text('Media, Links and Docs'),
        bottom: const TabBar(tabs: [
          Tab(text: 'Media'), Tab(text: 'Links'), Tab(text: 'Docs'),
        ])),
      body: const TabBarView(children: [
        Center(child: Icon(Icons.photo_library_outlined, size: 75)),
        Center(child: Icon(Icons.link, size: 75)),
        Center(child: Icon(Icons.description_outlined, size: 75)),
      ]),
    ),
  );
}
