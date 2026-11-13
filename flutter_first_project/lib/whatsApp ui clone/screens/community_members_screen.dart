import 'package:flutter/material.dart';
import 'package:flutter_first_project/whatsApp%20ui%20clone/screens/feature_image.dart';


class CommunityMembersScreen extends StatelessWidget {
  const CommunityMembersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final names = ['Alex Morgan', 'Sara Khan', 'Usman Ali', 'Ayesha Noor'];
    return Scaffold(
      appBar: AppBar(title: const Text('Community Members')),
      body: ListView(children: names.map((name) => ListTile(
        leading: const FeatureImage(path: 'assets/images/contact.png',
          width: 46, height: 46, radius: 24),
        title: Text(name),
        subtitle: const Text('Member'),
        trailing: const Icon(Icons.more_horiz),
      )).toList()),
    );
  }
}
