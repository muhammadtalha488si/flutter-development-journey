import 'package:flutter/material.dart';

class StarredMessagesScreen extends StatelessWidget {
  const StarredMessagesScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Starred Messages')),
    body: const Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      Icon(Icons.star_border, size: 70, color: Colors.grey),
      SizedBox(height: 12),
      Text('No starred messages yet'),
      Text('Star a message in a chat to see it here.',
        style: TextStyle(color: Colors.grey)),
    ])),
  );
}
