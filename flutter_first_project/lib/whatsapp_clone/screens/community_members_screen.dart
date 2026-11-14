import 'package:flutter/material.dart';
import 'feature_image.dart';


class CommunityMembersScreen extends StatelessWidget {
  const CommunityMembersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final names = ['Alex Morgan', 'Sara Khan', 'Usman Ali', 'Ayesha Noor'];
    return Scaffold(
      appBar: AppBar(title: const Text('Community Members')),
      body: ListView(children: names.map((name) => ListTile(
        leading: const FeatureImage(path: 'assets/whatsapp_clone/images/contact.jpg',
          width: 46, height: 46, radius: 24),
        title: Text(name),
        subtitle: const Text('Member'),
        trailing: const Icon(Icons.more_horiz),
      )).toList()),
    );
  }
}
