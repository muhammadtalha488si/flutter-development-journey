import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class ChatInfoScreen extends StatelessWidget {
  const ChatInfoScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Chat Info')),
    body: ListView(padding: const EdgeInsets.all(20), children: const [
      Center(child: FeatureImage(path: 'assets/images/contact.png',
        width: 110, height: 110, radius: 60)),
      SizedBox(height: 12),
      Text('Demo Contact', textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ListTile(leading: Icon(Icons.photo_library), title: Text('Media, Links and Docs')),
      ListTile(leading: Icon(Icons.star), title: Text('Starred Messages')),
      ListTile(leading: Icon(Icons.notifications), title: Text('Notifications')),
      ListTile(leading: Icon(Icons.timer), title: Text('Disappearing Messages')),
      ListTile(leading: Icon(Icons.lock), title: Text('Encryption')),
    ]),
  );
}
